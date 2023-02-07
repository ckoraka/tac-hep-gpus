#include <TROOT.h>
#include <TChain.h>
#include <TFile.h>
#include <TTree.h>

#define maxLepSize 20
#define maxJetSize 20


Int_t nleps;
Float_t lepE[maxLepSize];
Float_t lepQ[maxLepSize];
Float_t lepPt[maxLepSize];
Float_t lepEta[maxLepSize];
Float_t lepPhi[maxLepSize];

Int_t njets;
Float_t jetPt[maxJetSize];
Float_t jetEta[maxJetSize];
Float_t jetPhi[maxJetSize];
Float_t jetE[maxJetSize];
Float_t jetHadronFlavour[maxJetSize];

