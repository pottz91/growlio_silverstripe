<% include NavBar %>

<main class="py-6 flex flex-col items-center bg-white min-h-80v lg:min-h-screen">
  <div class="max-w-6xl">

    <div class=" grid grid-cols-12 gap-x-4 w-full">
      <div class="col-span-12 flex flex-col bg-white py-3 px-4">
        <h1 class="text-black font-bold text-xl ">$TextH1</h1>
        <h2 class="font-light mt-1">
          $TextH2
        </h2>
      </div>
 
    </div>

    <% loop Hotels %>
    <div class="gap-x-4 bg-white shadow-xl shadow-gray-300 w-full max-w-4xl flex
      flex-col sm:flex-row gap-3 sm:items-center justify-between mt-4
      rounded-md">
      <div class="md:shrink-0">
        <img class="mr-12 rounded-lg h-48 w-full object-cover "
          src="https://growlio.de/wp-content/uploads/2022/06/13563341.jpeg"
          alt="Modern building architecture">
      </div>
      <div>
        <h3 class="mx-1 font-bold mt-px">$HotelName</h3>
        <div class="flex items-center gap-1 mt-2">
          <span class="bg-purple-100 text-purple-700 rounded-full px-3 py-1
            text-sm">$Benefit</span>
          <span class="text-slate-600 text-sm flex gap-1 items-center"> <svg
              xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
              viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M17.657
                16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0
                1111.314 0z" />
                <path stroke-linecap="round" stroke-linejoin="round" d="M15 11a3
                  3 0 11-6 0 3 3 0 016 0z" />
                </svg>$Ort</span>

            </div>
              $HotelBewertung.RAW
          </div>
          <div class="">
            <a href="$Link">
            <button class=" bg-purple-600 hover:bg-white hover:text-purple-600 h
              text-white mx-2 text-white font-medium px-4 py-2 rounded-md flex
              gap-1 items-center">Verfügbarkeit prüfen <svg
                xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M13 7l5
                  5m0 0l-5 5m5-5H6" />
                </svg>
             </button>
            </a>
          </div>
        </div>

      <% end_loop %>
      </div>

      

      <% include HotelText %>




    </main>