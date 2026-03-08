void YSCC_Init();
void YSCC_Play(u8 start_seg, u32 byte_size);
void YSCC_PlayLoop(u8 start_seg, u32 byte_size);
void YSCC_Stop();
void YSCC_Pause();
void YSCC_Resume();
bool YSCC_IsPlaying();
bool YSCC_IsPaused();
bool YSCC_Decode();          // chiamare ogni VBlank; ritorna TRUE al termine del ciclo
void YSCC_CopyPCMBlock();
u16 YSCC_GetFirstSegmentOfCurrentPlaying();
