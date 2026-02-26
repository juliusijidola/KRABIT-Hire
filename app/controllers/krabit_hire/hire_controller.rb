module ::KrabitHire
  class HireController < ::ApplicationController
    requires_login

    def index
      render plain: "KRABIT /hire works ✅"
    end
  end
end
