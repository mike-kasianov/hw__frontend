defmodule FrontendWeb.HomeController do
  use FrontendWeb, :controller

  def index(conn, _params) do
    tours = [
      %{
        title: "London",
        description:
          "This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.",
        image_url:
          "https://cdn.londonandpartners.com/visit/general-london/areas/river/76709-640x360-houses-of-parliament-and-london-eye-on-thames-from-above-640.jpg"
      },
      %{
        title: "Kiev",
        description:
          "This card has supporting text below as a natural lead-in to additional content.",
        image_url: "https://wondersholidays.com/wp-content/uploads/2018/02/kiev1.jpg"
      },
      %{
        title: "Moscow",
        description:
          "This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.",
        image_url:
          "https://cdni.rbth.com/rbthmedia/images/2018.10/original/5bd6beae15e9f94a6f69c791.jpg"
      },
      %{
        title: "New York",
        description:
          "This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.",
        image_url:
          "https://www.wantseeproject.com/wp-content/uploads/2016/03/New-York-Skyline.jpg"
      },
      %{
        title: "Egypt",
        description:
          "This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.",
        image_url: "https://www.state.gov/wp-content/uploads/2019/04/Egypt-2109x1406.jpg"
      },
      %{
        title: "Kuala Lumpur",
        description:
          "This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.",
        image_url:
          "https://cdn.thecrazytourist.com/wp-content/uploads/2018/08/ccimage-shutterstock_571221049.jpg"
      },
      %{
        title: "Las Vegas",
        description:
          "This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.",
        image_url:
          "https://cdn.vox-cdn.com/thumbor/k_x4ceF8qG8GKdyOmo5OjJ7yK4A=/0x0:1500x500/1200x900/filters:focal(630x130:870x370)/cdn.vox-cdn.com/uploads/chorus_image/image/55968423/lvnb_banner.0.jpg"
      },
      %{
        title: "Paris",
        description:
          "This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.",
        image_url:
          "https://www.telegraph.co.uk/content/dam/Travel/hotels/europe/france/paris/paris-cityscape-overview-guide.jpg?imwidth=450"
      },
      %{
        title: "Berlin",
        description:
          "This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.",
        image_url:
          "https://www.steigenberger.com/cache/images/berlin_fotolia_93887_2306ae4113b62425b112e36-1-1.jpg"
      }
    ]

    render(conn, "index.html", tours: tours)
  end
end
