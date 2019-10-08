ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Concerts" do
          ul do
            Concert.recent.map do |concert|
              li link_to(concert.name, admin_concert_path(concert))
            end
          end
        end
      end
    end
  end
end
