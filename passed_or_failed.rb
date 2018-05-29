class PassedOrFailed

    def initialize(hash, bound)
        @hash = hash
        @bound = bound.to_i
    end

    def perform
        failed = {}
        passed = {}
        @hash.each do |key, value|
            if (value.to_i < @bound)
                failed[key] = value.to_i
            else
                passed[key] = value.to_i
            end
        end
        {passed: passed, failed: failed}
    end
end
