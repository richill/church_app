class StaticPagesController < ApplicationController
  def homepg
    @events = Event.all
  end

  def aboutuspg
  end

  def aroundworldpg
  end

  def baptismpg
    @events = Event.baptism_events 
  end

  def bibleandyoupg 
    @events = Event.biblestudies_events  
  end

  def broadfieldresoucepg 
  end

  def contactpg  
  end

  def contactlistpg  
  end

  def connectdpg
    @launchministries = Launchministry.all
  end

  def childrenteenpg  
  end

  def directionpg  
  end

  def donatepg
  end

  def forumpg
    @discussions = Discussion.all
  end

  def getconnectedpg
  end

  def gdprpg
  end

  def growpg
  end

  def leadershipdevelopmentpg  
    @events = Event.leadership_events 
  end

  def mediaandcomepg
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

  def recreadingplanpg
    @recommendedreadings = Recommendedreading.all
  end

  def resourcespg
  end

  def servepg
  end

  def servicetimespg
  end

  def smallgroupspg
    @smallgroups = Smallgroup.all
  end

  def statementfaithpg
  end

  def supportpg 
  end

  def thankyoupg
  end

  def thebiblepg
  end

  def usefulservicespg  
  end

  def youthpg
  end
end
