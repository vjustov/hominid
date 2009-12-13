require 'xmlrpc/client'

module Hominid

  class HominidError < StandardError
    def initialize(error)
      super("#{error.message}")
    end
  end

  class AlreadySubscribed < APIError
  end

  class AlreadyUnsubscribed < APIError
  end

  class CampaignError < APIError
  end

  class InterestGroupError < APIError
  end

  class InvalidInterestGroup < InterestGroupError
  end

  class InvalidEcommerceOrder < APIError
  end

  class ListError < APIError
  end

  class ListEmailError < ListError
  end

  class ListMergeError < ListError
  end

  class NotExists < APIError
  end

  class NotSubscribed < APIError
  end

  class HominidCommunicationError < HominidError
    def initialize(message)
      super(message)
    end
  end

end

require 'hominid/list'
require 'hominid/campaign'
require 'hominid/helper'
require 'hominid/base'

