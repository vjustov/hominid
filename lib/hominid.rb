require 'xmlrpc/client'
require 'ostruct'

module Hominid

  class StandardError < ::StandardError
  end

  class APIError < StandardError
    def initialize(error)
      super("<#{error.faultCode}> #{error.message}")
    end
  end


  class ListError < APIError
  end

  class ListEmailError < ListError
  end

  class ListMergeError < ListError
  end

  class AlreadySubscribed < ListEmailError
  end

  class AlreadyUnsubscribed < ListEmailError
  end

  class NotExists < ListEmailError
  end

  class NotSubscribed < ListEmailError
  end

  class CommunicationError < StandardError
    def initialize(message)
      super(message)
    end
  end
end

<<<<<<< HEAD:lib/hominid.rb
require 'hominid/list'
require 'hominid/campaign'
require 'hominid/helper'
=======
begin
  # include the provided rake task
  require 'rake'
  unless Rake::Task.task_defined? "hominid:config"
    load File.join(File.dirname(__FILE__), '..', 'tasks', 'rails', 'hominid.rake')
  end
rescue LoadError
  # silently skip rake task inclusion unless the rake gem is installed
end

>>>>>>> 2ae939d58d9efdaa68e2aa648f83b8e3f56b20da:lib/hominid.rb
require 'hominid/base'

