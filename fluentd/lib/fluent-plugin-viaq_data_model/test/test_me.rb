
require 'fluent/test'
require 'test/unit/rr'

require 'fluent/plugin/filter_viaq_data_model'

class MyTest < Test::Unit::TestCase
  include Fluent

  setup do
    Fluent::Test.setup
    @time = Fluent::Engine.now
    log = Fluent::Engine.log
    @timestamp = Time.now
    @timestamp_str = @timestamp.utc.to_datetime.rfc3339(6)
    stub(Time).now { @timestamp }
  end

  def create_driver(conf = '')
    d = Test::FilterTestDriver.new(ViaqDataModelFilter, '**').configure(conf, true)
    @dlog = d.instance.log
    d
  end

  def emit_with_tag(tag, msg={}, conf='')
    d = create_driver(conf)
    d.run {
      d.emit_with_tag(tag, msg, @time)
    }.filtered.instance_variable_get(:@record_array)[0]
  end

  full = '
  enable_flatten_labels true
  elasticsearch_index_prefix_field "viaq_index_name"
  default_keep_fields CEE,time,@timestamp,aushape,ci_job,collectd,docker,fedora-ci,file,foreman,geoip,hostname,ipaddr4,ipaddr6,kubernetes,level,message,namespace_name,namespace_uuid,offset,openstack,ovirt,pid,pipeline_metadata,rsyslog,service,systemd,tags,testcase,tlog,viaq_msg_id
  extra_keep_fields ""
  keep_empty_fields "message"
  use_undefined false
  undefined_name "undefined"
  rename_time true
  rename_time_if_missing false
  src_time_name "time"
  dest_time_name "@timestamp"
  pipeline_type "collector"
  undefined_to_string "false"
  undefined_dot_replace_char "UNUSED"
  undefined_max_num_fields "-1"
  process_kubernetes_events "false"
  <level>
    name warn
    match \'Warning|WARN|^W[0-9]+|level=warn|Value:warn|"level":"warn"\'
  </level>
  <level>
    name info
    match \'Info|INFO|^I[0-9]+|level=info|Value:info|"level":"info"\'
  </level>
  <level>
    name error
    match \'Error|ERROR|^E[0-9]+|level=error|Value:error|"level":"error"\'
  </level>
  <level>
    name critical
    match \'Critical|CRITICAL|^C[0-9]+|level=critical|Value:critical|"level":"critical"\'
  </level>
  <level>
    name debug
    match \'Debug|DEBUG|^D[0-9]+|level=debug|Value:debug|"level":"debug"\'
  </level>
  <formatter>
    tag "system.var.log**"
    type sys_var_log
    remove_keys host,pid,ident
  </formatter>
  <formatter>
    tag "journal.system**"
    type sys_journal
    remove_keys log,stream,MESSAGE,_SOURCE_REALTIME_TIMESTAMP,__REALTIME_TIMESTAMP,CONTAINER_ID,CONTAINER_ID_FULL,CONTAINER_NAME,PRIORITY,_BOOT_ID,_CAP_EFFECTIVE,_CMDLINE,_COMM,_EXE,_GID,_HOSTNAME,_MACHINE_ID,_PID,_SELINUX_CONTEXT,_SYSTEMD_CGROUP,_SYSTEMD_SLICE,_SYSTEMD_UNIT,_TRANSPORT,_UID,_AUDIT_LOGINUID,_AUDIT_SESSION,_SYSTEMD_OWNER_UID,_SYSTEMD_SESSION,_SYSTEMD_USER_UNIT,CODE_FILE,CODE_FUNCTION,CODE_LINE,ERRNO,MESSAGE_ID,RESULT,UNIT,_KERNEL_DEVICE,_KERNEL_SUBSYSTEM,_UDEV_SYSNAME,_UDEV_DEVNODE,_UDEV_DEVLINK,SYSLOG_FACILITY,SYSLOG_IDENTIFIER,SYSLOG_PID
  </formatter>
  <formatter>
    tag "kubernetes.journal.container**"
    type k8s_journal
    remove_keys \'log,stream,MESSAGE,_SOURCE_REALTIME_TIMESTAMP,__REALTIME_TIMESTAMP,CONTAINER_ID,CONTAINER_ID_FULL,CONTAINER_NAME,PRIORITY,_BOOT_ID,_CAP_EFFECTIVE,_CMDLINE,_COMM,_EXE,_GID,_HOSTNAME,_MACHINE_ID,_PID,_SELINUX_CONTEXT,_SYSTEMD_CGROUP,_SYSTEMD_SLICE,_SYSTEMD_UNIT,_TRANSPORT,_UID,_AUDIT_LOGINUID,_AUDIT_SESSION,_SYSTEMD_OWNER_UID,_SYSTEMD_SESSION,_SYSTEMD_USER_UNIT,CODE_FILE,CODE_FUNCTION,CODE_LINE,ERRNO,MESSAGE_ID,RESULT,UNIT,_KERNEL_DEVICE,_KERNEL_SUBSYSTEM,_UDEV_SYSNAME,_UDEV_DEVNODE,_UDEV_DEVLINK,SYSLOG_FACILITY,SYSLOG_IDENTIFIER,SYSLOG_PID\'
  </formatter>
  <formatter>
    tag "kubernetes.var.log.pods.**_eventrouter-** k8s-audit.log** openshift-audit.log** ovn-audit.log**"
    type k8s_json_file
    remove_keys log,stream,CONTAINER_ID_FULL,CONTAINER_NAME
    process_kubernetes_events \'true\'
  </formatter>
  <formatter>
    tag "kubernetes.var.log.pods**"
    type k8s_json_file
    remove_keys log,stream,CONTAINER_ID_FULL,CONTAINER_NAME
  </formatter>
'

full_nolevel = '
enable_flatten_labels true
elasticsearch_index_prefix_field "viaq_index_name"
default_keep_fields CEE,time,@timestamp,aushape,ci_job,collectd,docker,fedora-ci,file,foreman,geoip,hostname,ipaddr4,ipaddr6,kubernetes,level,message,namespace_name,namespace_uuid,offset,openstack,ovirt,pid,pipeline_metadata,rsyslog,service,systemd,tags,testcase,tlog,viaq_msg_id
extra_keep_fields ""
keep_empty_fields "message"
use_undefined false
undefined_name "undefined"
rename_time true
rename_time_if_missing false
src_time_name "time"
dest_time_name "@timestamp"
pipeline_type "collector"
undefined_to_string "false"
undefined_dot_replace_char "UNUSED"
undefined_max_num_fields "-1"
process_kubernetes_events "false"
<formatter>
  tag "system.var.log**"
  type sys_var_log
  remove_keys host,pid,ident
</formatter>
<formatter>
  tag "journal.system**"
  type sys_journal
  remove_keys log,stream,MESSAGE,_SOURCE_REALTIME_TIMESTAMP,__REALTIME_TIMESTAMP,CONTAINER_ID,CONTAINER_ID_FULL,CONTAINER_NAME,PRIORITY,_BOOT_ID,_CAP_EFFECTIVE,_CMDLINE,_COMM,_EXE,_GID,_HOSTNAME,_MACHINE_ID,_PID,_SELINUX_CONTEXT,_SYSTEMD_CGROUP,_SYSTEMD_SLICE,_SYSTEMD_UNIT,_TRANSPORT,_UID,_AUDIT_LOGINUID,_AUDIT_SESSION,_SYSTEMD_OWNER_UID,_SYSTEMD_SESSION,_SYSTEMD_USER_UNIT,CODE_FILE,CODE_FUNCTION,CODE_LINE,ERRNO,MESSAGE_ID,RESULT,UNIT,_KERNEL_DEVICE,_KERNEL_SUBSYSTEM,_UDEV_SYSNAME,_UDEV_DEVNODE,_UDEV_DEVLINK,SYSLOG_FACILITY,SYSLOG_IDENTIFIER,SYSLOG_PID
</formatter>
<formatter>
  tag "kubernetes.journal.container**"
  type k8s_journal
  remove_keys \'log,stream,MESSAGE,_SOURCE_REALTIME_TIMESTAMP,__REALTIME_TIMESTAMP,CONTAINER_ID,CONTAINER_ID_FULL,CONTAINER_NAME,PRIORITY,_BOOT_ID,_CAP_EFFECTIVE,_CMDLINE,_COMM,_EXE,_GID,_HOSTNAME,_MACHINE_ID,_PID,_SELINUX_CONTEXT,_SYSTEMD_CGROUP,_SYSTEMD_SLICE,_SYSTEMD_UNIT,_TRANSPORT,_UID,_AUDIT_LOGINUID,_AUDIT_SESSION,_SYSTEMD_OWNER_UID,_SYSTEMD_SESSION,_SYSTEMD_USER_UNIT,CODE_FILE,CODE_FUNCTION,CODE_LINE,ERRNO,MESSAGE_ID,RESULT,UNIT,_KERNEL_DEVICE,_KERNEL_SUBSYSTEM,_UDEV_SYSNAME,_UDEV_DEVNODE,_UDEV_DEVLINK,SYSLOG_FACILITY,SYSLOG_IDENTIFIER,SYSLOG_PID\'
</formatter>
<formatter>
  tag "kubernetes.var.log.pods.**_eventrouter-** k8s-audit.log** openshift-audit.log** ovn-audit.log**"
  type k8s_json_file
  remove_keys log,stream,CONTAINER_ID_FULL,CONTAINER_NAME
  process_kubernetes_events \'true\'
</formatter>
<formatter>
  tag "kubernetes.var.log.pods**"
  type k8s_json_file
  remove_keys log,stream,CONTAINER_ID_FULL,CONTAINER_NAME
</formatter>
'

level_only = '
<level>
  name warn
  match \'Warning|WARN|^W[0-9]+|level=warn|Value:warn|"level":"warn"\'
</level>
<level>
  name info
  match \'Info|INFO|^I[0-9]+|level=info|Value:info|"level":"info"\'
</level>
<level>
  name error
  match \'Error|ERROR|^E[0-9]+|level=error|Value:error|"level":"error"\'
</level>
<level>
  name critical
  match \'Critical|CRITICAL|^C[0-9]+|level=critical|Value:critical|"level":"critical"\'
</level>
<level>
  name debug
  match \'Debug|DEBUG|^D[0-9]+|level=debug|Value:debug|"level":"debug"\'
</level>

'

require 'benchmark'
  test 'see if undefined fields are put in custom field except for kept fields' do
    record = {
        "kubernetes":{
            "container_name":"loader-0",
            "namespace_name":"testhack-gstdqgur",
            "pod_name":"functional",
            "container_image":"quay.io/openshift-logging/cluster-logging-load-client:latest",
            "container_image_id":"quay.io/openshift-logging/cluster-logging-load-client@sha256:6f3bc8e278ade4127c5f5ff7e0e4d1aa2e8e3affe25133827c0520e85f9cc09c",
            "pod_id":"f140a4cb-3501-455b-b079-a6c6ca673464","pod_ip":"10.129.2.32","host":"ip-10-0-215-45.us-east-2.compute.internal",
            "labels":{"test-client":"true","testname":"functional","testtype":"functional"},
            "master_url":"https://kubernetes.default.svc","namespace_id":"6a043163-b2b7-43a4-8b6d-f67078d101fd",
            "namespace_labels":{"test-client":"true","kubernetes_io/metadata_name":"testhack-gstdqgur"}},
        "message" => "goloader seq - functional.0.0000000000000000C5F0ECEF8DA56FFB - 0000000005 - vngGezzfcOptxUntQvFOPdDyDBxLzmJFDvkyWzoPAdeUairrDhrUEJe"}
    tag = 'kubernetes.var.log.pods.namespace-podname-value.containername.0.log'
   
    n = 1 #100000
    Benchmark.bm do |b|
        b.report("        full") do
           d = create_driver(full)
           d.run do
            n.times do
                d.emit_with_tag(tag, record, @time)
            end
           end
        end 
        b.report("       level") do
           d = create_driver(level_only)
           d.run do
            n.times do
                d.emit_with_tag(tag, record, @time)
            end
           end
        end 
        b.report("full_nolevel") do
           d = create_driver(level_only)
           d.run do
            n.times do
                d.emit_with_tag(tag, record, @time)
            end
           end
        end 
      end
    end

# require 'benchmark'
# require 'ostruct'
#     def setup

# @levels = [
#     OpenStruct.new(level: "warn", match:  'Warning|WARN|^W[0-9]+|level=warn|Value:warn|"level":"warn"'),
#     OpenStruct.new(level: "info", match: 'Info|INFO|^I[0-9]+|level=info|Value:info|"level":"info"'),
#     OpenStruct.new(level: "error", match:  'Error|ERROR|^E[0-9]+|level=error|Value:error|"level":"error"'),
#     OpenStruct.new(level: "critical", match:  'Critical|CRITICAL|^C[0-9]+|level=critical|Value:critical|"level":"critical"'),
#     OpenStruct.new(level: "debug", match: 'Debug|DEBUG|^D[0-9]+|level=debug|Value:debug|"level":"debug"'),
# ]


#         buffer = []
#         @levels.each_with_index do |level,i|
#           if i < 10 
#             buffer.append("(?<l#{i}_#{level.name}>#{level.match})")
#           else
#             log.info("Levels supports a maximum of 10 matches. Ignoring: #{level}")
#           end
#         end
#         @level_matcher = Regexp.new("^.*#{buffer.join('|')}.*$") unless buffer.empty?
#     end

#     test "" do
#         record = {"message" => "goloader seq - functional.0.0000000000000000C5F0ECEF8DA56FFB - 0000000005 - vngGezzfcOptxUntQvFOPdDyDBxLzmJFDvkyWzoPAdeUairrDhrUEJe"}
#         setup
#         n = 600000
#         Benchmark.bm do |b|
#             b.report {n.times{normalize_level!(record)}}
#         end
#         puts record
    # end

end