namespace Mythen
{
  class Interface : HwInterface
  {
%TypeHeaderCode
#include <MythenInterface.h>
%End
  public:
    Interface(Mythen::Camera&);
    virtual ~Interface();

    virtual void getCapList(std::vector<HwCap> &cap_list /Out/) const;
    virtual void reset(ResetLevel reset_level);
    virtual void prepareAcq();
    virtual void startAcq();
    virtual void stopAcq();
    virtual void getStatus(StatusType& status /Out/);

    virtual int getNbHwAcquiredFrames();
    virtual int getNbAcquiredFrames();

    short getNrOfModules();
    void setNrOfModules(short nr);

    unsigned short getDynamicRange();
    void setDynamicRange(unsigned short dr);

    const std::string& getCalDir();
    void setCalDir(const std::string& caldir);

    const std::string& getTrimDir();
    void setTrimDir(const std::string& trimdir);

    const std::string& getOutDir();
    void setOutDir(const std::string& outdir);

    const std::string& getOutFile();
    void setOutFile(const std::string& outfile);

    int getOutIndex();
    void setOutIndex(int outindex);

    const std::string& getSettings();
    void setSettings(const std::string& settings);

    short getThreshold();
    void setThreshold(short threshold);

  };




};

