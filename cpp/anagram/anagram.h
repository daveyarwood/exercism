#include <string>
#include <vector>

using namespace std;

namespace anagram {
  class anagram {
    public:
      anagram(string word);
      vector<string> matches(vector<string> candidates);

    private:
      string _word;
  };
}
