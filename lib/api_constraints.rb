class ApiConstraints
    def initialize(options)
        @version = options[:version]
        @default = options[:default]
    end

    def matches?(req)
        @defaut || req.headers['Accept'].include?("application/vnd.superstar-is-back.v#{@version}")
    end
end
