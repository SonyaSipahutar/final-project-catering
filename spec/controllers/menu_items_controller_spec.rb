require 'rails_helper'

RSpec.describe MenuItemsController do

  describe 'GET #show' do
    it "assigns the requested menu_item to @menu_item" do
      menu_item = FactoryBot.create(:menu_item)
      get :show, params: { id: menu_item }
      expect(assigns(:menu_item)).to eq menu_item
    end

    it "renders the :show template" do
      menu_item = FactoryBot.create(:menu_item)
      get :show, params: { id: menu_item }
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    it "assigns a new MenuItem to @menu_item" do
      get :new
      expect(assigns(:menu_item)).to be_a_new(MenuItem)
    end

    it "renders the :new template" do
      get :new
      expect(:response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested menu_item to @menu_item" do
      menu_item = FactoryBot.create(:menu_item)
      get :edit, params: { id: menu_item }
      expect(assigns(:menu_item)).to eq menu_item
    end

    it "renders the :edit template" do
      menu_item = FactoryBot.create(:menu_item)
      get :edit, params: { id: menu_item }
      expect(response).to render_template :edit
    end
  end

  describe 'POST #create' do

    context "with invalid attributes" do
      it "does not save the new menu_item in the database" do
        expect{
          post :create, params: { menu_item: FactoryBot.attributes_for(:invalid_menu_item) }
        }.not_to change(MenuItem, :count)
      end

      it "re-renders the :new template" do
        post :create, params: { menu_item: FactoryBot.attributes_for(:invalid_menu_item) }
        expect(response).to render_template :new
      end
    end
  end

  describe 'PATCH #update' do
    before :each do
      @menu_item = FactoryBot.create(:menu_item)
    end

    context "with valid attributes" do
      it "locates the requested @menu_item" do
        patch :update, params: { id: @menu_item, menu_item: FactoryBot.attributes_for(:menu_item) }
        expect(assigns(:menu_item)).to eq @menu_item
      end

      it "changes @menu_item's attributes" do
        patch :update, params: { id: @menu_item, menu_item: FactoryBot.attributes_for(:menu_item, name: 'Nasi') }
        @menu_item.reload
        expect(@menu_item.name).to eq('Nasi')
      end

      it "redirects to the menu_item" do
        patch :update, params: { id: @menu_item, menu_item: FactoryBot.attributes_for(:menu_item) }
        expect(response).to redirect_to @menu_item
      end
    end
    context 'with invalid attributes' do
      it 'does not save the updated menu_item in the database' do
        patch :update, params: { id: @menu_item, menu_item: FactoryBot.attributes_for(:invalid_menu_item, name: 'Nasi', price: "Test") }
        expect(@menu_item.name).not_to eq('Nasi')
      end

      it 're-renders the edit template' do
        patch :update, params: { id: @menu_item, menu_item: FactoryBot.attributes_for(:invalid_menu_item) }
        expect(assigns(:menu_item)).to eq @menu_item
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE #destroy' do
    before :each do
      @menu_item = FactoryBot.create(:menu_item)
    end

    it "deletes the menu_item from the database" do
      expect{
        delete :destroy, params: { id: @menu_item }
      }.to change(MenuItem, :count).by(-1)
    end

    it "redirects to menu_items#index" do
      delete :destroy, params: { id: @menu_item }
      expect(response).to redirect_to menu_items_url
    end
  end
end