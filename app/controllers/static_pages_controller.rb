class StaticPagesController < ApplicationController
  def homepg
    @events = Event.approved_events.all
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

  # ----------------- jobs -----------------
  def careersvolunteerspg  
    @jobs = Job.desc_order
  end

  def churchjobspg
    @jobs = Job.church_jobs.desc_order
  end

  def careerjobspg
    @jobs = Job.career_jobs.desc_order
  end

  def volunteerpg
    @jobs = Job.volunteer_jobs.desc_order
  end
  # ----------------- jobs -----------------

  def contactpg  
  end

  def contactlistpg  
  end

  def connectdpg
    @launchministries = Launchministry.approved_ministries
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

  def ministryteampg
  end

  def nextstepspg 
  end

  def ourchurchpg
  end

  def ourcommunitypg
  end

  def ourpeoplepg
  end

  def pastoralteampg
  end

  def practicalneedspg
    @practicalneeds = Practicalneed.desc_order
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
