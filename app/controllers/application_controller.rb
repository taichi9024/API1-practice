class ApplicationController < ActionController::Base
    content_security_policy do |p|
        p.script_src :self, 'nonce-12345abc'
    end
end
