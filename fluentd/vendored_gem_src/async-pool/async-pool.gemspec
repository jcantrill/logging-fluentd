# -*- encoding: utf-8 -*-
# stub: async-pool 0.3.12 ruby lib

Gem::Specification.new do |s|
  s.name = "async-pool".freeze
  s.version = "0.3.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "funding_uri" => "https://github.com/sponsors/ioquatix/" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Samuel Williams".freeze, "Olle Jonsson".freeze, "Simon Perepelitsa".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIE2DCCA0CgAwIBAgIBATANBgkqhkiG9w0BAQsFADBhMRgwFgYDVQQDDA9zYW11\nZWwud2lsbGlhbXMxHTAbBgoJkiaJk/IsZAEZFg1vcmlvbnRyYW5zZmVyMRIwEAYK\nCZImiZPyLGQBGRYCY28xEjAQBgoJkiaJk/IsZAEZFgJuejAeFw0yMjA4MDYwNDUz\nMjRaFw0zMjA4MDMwNDUzMjRaMGExGDAWBgNVBAMMD3NhbXVlbC53aWxsaWFtczEd\nMBsGCgmSJomT8ixkARkWDW9yaW9udHJhbnNmZXIxEjAQBgoJkiaJk/IsZAEZFgJj\nbzESMBAGCgmSJomT8ixkARkWAm56MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIB\nigKCAYEAomvSopQXQ24+9DBB6I6jxRI2auu3VVb4nOjmmHq7XWM4u3HL+pni63X2\n9qZdoq9xt7H+RPbwL28LDpDNflYQXoOhoVhQ37Pjn9YDjl8/4/9xa9+NUpl9XDIW\nsGkaOY0eqsQm1pEWkHJr3zn/fxoKPZPfaJOglovdxf7dgsHz67Xgd/ka+Wo1YqoE\ne5AUKRwUuvaUaumAKgPH+4E4oiLXI4T1Ff5Q7xxv6yXvHuYtlMHhYfgNn8iiW8WN\nXibYXPNP7NtieSQqwR/xM6IRSoyXKuS+ZNGDPUUGk8RoiV/xvVN4LrVm9upSc0ss\nRZ6qwOQmXCo/lLcDUxJAgG95cPw//sI00tZan75VgsGzSWAOdjQpFM0l4dxvKwHn\ntUeT3ZsAgt0JnGqNm2Bkz81kG4A2hSyFZTFA8vZGhp+hz+8Q573tAR89y9YJBdYM\nzp0FM4zwMNEUwgfRzv1tEVVUEXmoFCyhzonUUw4nE4CFu/sE3ffhjKcXcY//qiSW\nxm4erY3XAgMBAAGjgZowgZcwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0O\nBBYEFO9t7XWuFf2SKLmuijgqR4sGDlRsMC4GA1UdEQQnMCWBI3NhbXVlbC53aWxs\naWFtc0BvcmlvbnRyYW5zZmVyLmNvLm56MC4GA1UdEgQnMCWBI3NhbXVlbC53aWxs\naWFtc0BvcmlvbnRyYW5zZmVyLmNvLm56MA0GCSqGSIb3DQEBCwUAA4IBgQB5sxkE\ncBsSYwK6fYpM+hA5B5yZY2+L0Z+27jF1pWGgbhPH8/FjjBLVn+VFok3CDpRqwXCl\nxCO40JEkKdznNy2avOMra6PFiQyOE74kCtv7P+Fdc+FhgqI5lMon6tt9rNeXmnW/\nc1NaMRdxy999hmRGzUSFjozcCwxpy/LwabxtdXwXgSay4mQ32EDjqR1TixS1+smp\n8C/NCWgpIfzpHGJsjvmH2wAfKtTTqB9CVKLCWEnCHyCaRVuKkrKjqhYCdmMBqCws\nJkxfQWC+jBVeG9ZtPhQgZpfhvh+6hMhraUYRQ6XGyvBqEUe+yo6DKIT3MtGE2+CP\neX9i9ZWBydWb8/rvmwmX2kkcBbX0hZS1rcR593hGc61JR6lvkGYQ2MYskBveyaxt\nQ2K9NVun/S785AP05vKkXZEFYxqG6EW012U4oLcFl5MySFajYXRYbuUpH6AY+HP8\nvoD0MPg1DssDLKwXyt1eKD/+Fq0bFWhwVM/1XiAXL7lyYUyOq24KHgQ2Csg=\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2022-08-28"
  s.files = ["lib/async/pool.rb".freeze, "lib/async/pool/controller.rb".freeze, "lib/async/pool/resource.rb".freeze, "lib/async/pool/version.rb".freeze, "license.md".freeze, "readme.md".freeze]
  s.homepage = "https://github.com/socketry/async-pool".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.3.26".freeze
  s.summary = "A singleplex and multiplex resource pool for implementing robust clients.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<async>.freeze, [">= 1.25"])
    s.add_development_dependency(%q<bake-test>.freeze, [">= 0"])
    s.add_development_dependency(%q<bake-test-external>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<covered>.freeze, [">= 0"])
    s.add_development_dependency(%q<sus>.freeze, ["~> 0.12"])
    s.add_development_dependency(%q<sus-fixtures-async>.freeze, [">= 0"])
  else
    s.add_dependency(%q<async>.freeze, [">= 1.25"])
    s.add_dependency(%q<bake-test>.freeze, [">= 0"])
    s.add_dependency(%q<bake-test-external>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<covered>.freeze, [">= 0"])
    s.add_dependency(%q<sus>.freeze, ["~> 0.12"])
    s.add_dependency(%q<sus-fixtures-async>.freeze, [">= 0"])
  end
end

