BookmarksController

def create
      WE NEED MOVIE_ID + LIST_ID

      post '/lists/:list_id/bookmarks'

      FETCHING LIST_ID FROM URL + FIND LIST IN DB
      @list = List.find(params[:list_id])

      CREATE OUR BOOKMARK WITH INFO FROM FORM >> MOVIE_ID
      @bookmark = Bookmark.new(bookmark_params)

      ASSIGN CORRECT LIST TO OUR BOOKMARK
      @bookmark.list = @list

      FROM HERE WE HAVE MOVIE_ID AND LIST_ID
      -----------------
      RAISE HERE IF YOU ARE STUCK >>> in the browser @bookmark.valid? @bookmark.errors.messages
      -----------------
      if @bookmark.save
        redirect_to list_path(@list)
      else
        render :new
      end
    end
