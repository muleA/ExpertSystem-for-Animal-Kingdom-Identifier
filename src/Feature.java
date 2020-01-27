/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author nabil mohd
 */
import com.sun.speech.freetts.*;
public class Feature {
    
    private static final String VoiceName="kevin16";
    private static Voice voice;
    private static VoiceManager vm= VoiceManager.getInstance();
    
      public static void speak(String text)
      {
        voice =vm.getVoice(VoiceName);
        voice.allocate();
        voice.speak(text);
      }
}
