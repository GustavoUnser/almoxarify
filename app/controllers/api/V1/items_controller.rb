module Api
	module V1
		class ItemsController < ApplicationController
            def index
                items = Item.all
                render json: {status: 'SUCCESS', message: 'Items list all', data:items}, status: :ok
            end

            def show
                item = Item.where(id: params[:id])
                unless item.blank?
                    render json: {status: 'SUCCESS', message: 'Item founded', data:item}, status: :ok
                else
                    render json: {status: 'FAILURE', message: 'Item not founded', data:{}}, status: :unprocessable_entity
                end
            end

            def destroy
                item = Item.where(id: params['id'])
                unless item.blank?
                    item.destroy
                    render json: {status: 'SUCCESS', message: 'Item deleted', data:item}, status: :ok
                else
                    render json: {status: 'FAILURE', message: 'Item not founded', data:{}}, status: :unprocessable_entity
                end
            end
        end
    end
end