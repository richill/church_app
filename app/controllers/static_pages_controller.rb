class StaticPagesController < ApplicationController
  def homepg
    @events = Event.all
  end

  def aboutuspg
  end

  def aroundworldpg
  end

  def connectdpg
    @launchministries = Launchministry.all
  end

  def childrenteenpg  
  end

  def donatepg
  end

  def forumpg
    @discussions = Discussion.all
  end

  def gdprpg
  end

  def growpg
  end

  def ministryideapg
  end

  def missionvisionpg
  end

  def nextstepspg 
  end

  def ourchurchpg
  end

  def ourcommunitypg
  end

  def ourpeoplepg
  end

  def privacypg
  end

  def receivechristpg
  end

  def servepg
  end

  def statementfaithpg
  end

  def thankyoupg
  end

  def youthpg
  end
end
