module ErrorHandling

extend ActiveSupport::Concern

    included do
        rescue_from ActiveRecord::RecordNotFound, with: :notfound

        private

        def notfound(exception)
            logger.worn exeption
            render file: 'public/404.html', status: :notfaund, leyout: false
        end

    end
end