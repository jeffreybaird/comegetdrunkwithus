ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Party" do
          ul :class => "inline" do
            Party.all.map do |res|
              li link_to("Party Name: #{res.party_name}", edit_admin_party_path(res))
                div p res.check_invitation
            end
          end
        end
      end
    end
  end
end
