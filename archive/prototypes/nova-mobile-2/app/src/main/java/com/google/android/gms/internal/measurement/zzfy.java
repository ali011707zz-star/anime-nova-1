package com.google.android.gms.internal.measurement;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import java.util.List;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfy extends zzjz<zzfy, zzfx> implements zzlh {
    public static final /* synthetic */ int zza = 0;
    private static final zzfy zze;
    private boolean zzA;
    private long zzC;
    private int zzD;
    private boolean zzG;
    private int zzJ;
    private int zzK;
    private int zzL;
    private long zzN;
    private long zzO;
    private int zzR;
    private zzgb zzT;
    private long zzV;
    private long zzW;
    private int zzZ;
    private boolean zzaa;
    private boolean zzac;
    private zzfu zzad;
    private int zzf;
    private int zzg;
    private int zzh;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzt;
    private long zzx;
    private long zzy;
    private zzkg<zzfo> zzi = zzjz.zzbA();
    private zzkg<zzgh> zzj = zzjz.zzbA();
    private String zzp = "";
    private String zzq = "";
    private String zzr = "";
    private String zzs = "";
    private String zzu = "";
    private String zzv = "";
    private String zzw = "";
    private String zzz = "";
    private String zzB = "";
    private String zzE = "";
    private String zzF = "";
    private zzkg<zzfk> zzH = zzjz.zzbA();
    private String zzI = "";
    private String zzM = "";
    private String zzP = "";
    private String zzQ = "";
    private String zzS = "";
    private zzke zzU = zzjz.zzbx();
    private String zzX = "";
    private String zzY = "";
    private String zzab = "";

    static {
        zzfy zzfyVar = new zzfy();
        zze = zzfyVar;
        zzjz.zzbG(zzfy.class, zzfyVar);
    }

    private zzfy() {
    }

    public static /* synthetic */ void zzQ(zzfy zzfyVar, long j10) {
        zzfyVar.zzf |= NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
        zzfyVar.zzO = j10;
    }

    public static /* synthetic */ void zzR(zzfy zzfyVar) {
        zzfyVar.zzf &= Api.BaseClientBuilder.API_PRIORITY_OTHER;
        zzfyVar.zzP = zze.zzP;
    }

    public static /* synthetic */ void zzS(zzfy zzfyVar, int i10) {
        zzfyVar.zzg |= 2;
        zzfyVar.zzR = i10;
    }

    public static /* synthetic */ void zzT(zzfy zzfyVar, int i10, zzfo zzfoVar) {
        zzfoVar.getClass();
        zzfyVar.zzbI();
        zzfyVar.zzi.set(i10, zzfoVar);
    }

    public static /* synthetic */ void zzU(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzg |= 4;
        zzfyVar.zzS = str;
    }

    public static /* synthetic */ void zzV(zzfy zzfyVar, zzgb zzgbVar) {
        zzgbVar.getClass();
        zzfyVar.zzT = zzgbVar;
        zzfyVar.zzg |= 8;
    }

    public static /* synthetic */ void zzW(zzfy zzfyVar, Iterable iterable) {
        zzke zzkeVar = zzfyVar.zzU;
        if (!zzkeVar.zzc()) {
            int size = zzkeVar.size();
            zzfyVar.zzU = zzkeVar.zzd(size == 0 ? 10 : size + size);
        }
        zzih.zzbq(iterable, zzfyVar.zzU);
    }

    public static /* synthetic */ void zzX(zzfy zzfyVar, zzfo zzfoVar) {
        zzfoVar.getClass();
        zzfyVar.zzbI();
        zzfyVar.zzi.add(zzfoVar);
    }

    public static /* synthetic */ void zzY(zzfy zzfyVar, long j10) {
        zzfyVar.zzg |= 16;
        zzfyVar.zzV = j10;
    }

    public static /* synthetic */ void zzZ(zzfy zzfyVar, long j10) {
        zzfyVar.zzg |= 32;
        zzfyVar.zzW = j10;
    }

    public static /* synthetic */ void zzaA(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzf |= 65536;
        zzfyVar.zzz = str;
    }

    public static /* synthetic */ void zzaB(zzfy zzfyVar) {
        zzfyVar.zzf &= -65537;
        zzfyVar.zzz = zze.zzz;
    }

    public static /* synthetic */ void zzaC(zzfy zzfyVar, boolean z10) {
        zzfyVar.zzf |= 131072;
        zzfyVar.zzA = z10;
    }

    public static /* synthetic */ void zzaD(zzfy zzfyVar) {
        zzfyVar.zzf &= -131073;
        zzfyVar.zzA = false;
    }

    public static /* synthetic */ void zzaE(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzf |= 262144;
        zzfyVar.zzB = str;
    }

    public static /* synthetic */ void zzaF(zzfy zzfyVar) {
        zzfyVar.zzf &= -262145;
        zzfyVar.zzB = zze.zzB;
    }

    public static /* synthetic */ void zzaG(zzfy zzfyVar, long j10) {
        zzfyVar.zzf |= NTLMEngineImpl.FLAG_NEGOTIATE_NTLM2;
        zzfyVar.zzC = j10;
    }

    public static /* synthetic */ void zzaH(zzfy zzfyVar, int i10) {
        zzfyVar.zzf |= 1048576;
        zzfyVar.zzD = i10;
    }

    public static /* synthetic */ void zzaI(zzfy zzfyVar, String str) {
        zzfyVar.zzf |= 2097152;
        zzfyVar.zzE = str;
    }

    public static /* synthetic */ void zzaJ(zzfy zzfyVar) {
        zzfyVar.zzf &= -2097153;
        zzfyVar.zzE = zze.zzE;
    }

    public static /* synthetic */ void zzaK(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzf |= 4194304;
        zzfyVar.zzF = str;
    }

    public static /* synthetic */ void zzaL(zzfy zzfyVar, boolean z10) {
        zzfyVar.zzf |= 8388608;
        zzfyVar.zzG = z10;
    }

    public static /* synthetic */ void zzaM(zzfy zzfyVar, Iterable iterable) {
        zzkg<zzfk> zzkgVar = zzfyVar.zzH;
        if (!zzkgVar.zzc()) {
            zzfyVar.zzH = zzjz.zzbB(zzkgVar);
        }
        zzih.zzbq(iterable, zzfyVar.zzH);
    }

    public static /* synthetic */ void zzaO(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzf |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        zzfyVar.zzI = str;
    }

    public static /* synthetic */ void zzaP(zzfy zzfyVar, int i10) {
        zzfyVar.zzf |= 33554432;
        zzfyVar.zzJ = i10;
    }

    public static /* synthetic */ void zzaQ(zzfy zzfyVar, int i10) {
        zzfyVar.zzf |= 1;
        zzfyVar.zzh = 1;
    }

    public static /* synthetic */ void zzaR(zzfy zzfyVar) {
        zzfyVar.zzf &= -268435457;
        zzfyVar.zzM = zze.zzM;
    }

    public static /* synthetic */ void zzaS(zzfy zzfyVar, long j10) {
        zzfyVar.zzf |= NTLMEngineImpl.FLAG_NEGOTIATE_128;
        zzfyVar.zzN = j10;
    }

    public static /* synthetic */ void zzaa(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzg |= 64;
        zzfyVar.zzX = str;
    }

    public static /* synthetic */ void zzab(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzg |= 128;
        zzfyVar.zzY = str;
    }

    public static /* synthetic */ void zzac(zzfy zzfyVar, Iterable iterable) {
        zzfyVar.zzbI();
        zzih.zzbq(iterable, zzfyVar.zzi);
    }

    public static /* synthetic */ void zzae(zzfy zzfyVar, int i10) {
        zzfyVar.zzbI();
        zzfyVar.zzi.remove(i10);
    }

    public static /* synthetic */ void zzaf(zzfy zzfyVar, int i10, zzgh zzghVar) {
        zzghVar.getClass();
        zzfyVar.zzbJ();
        zzfyVar.zzj.set(i10, zzghVar);
    }

    public static /* synthetic */ void zzag(zzfy zzfyVar, zzgh zzghVar) {
        zzghVar.getClass();
        zzfyVar.zzbJ();
        zzfyVar.zzj.add(zzghVar);
    }

    public static /* synthetic */ void zzah(zzfy zzfyVar, Iterable iterable) {
        zzfyVar.zzbJ();
        zzih.zzbq(iterable, zzfyVar.zzj);
    }

    public static /* synthetic */ void zzai(zzfy zzfyVar, int i10) {
        zzfyVar.zzbJ();
        zzfyVar.zzj.remove(i10);
    }

    public static /* synthetic */ void zzaj(zzfy zzfyVar, long j10) {
        zzfyVar.zzf |= 2;
        zzfyVar.zzk = j10;
    }

    public static /* synthetic */ void zzak(zzfy zzfyVar, long j10) {
        zzfyVar.zzf |= 4;
        zzfyVar.zzl = j10;
    }

    public static /* synthetic */ void zzal(zzfy zzfyVar, long j10) {
        zzfyVar.zzf |= 8;
        zzfyVar.zzm = j10;
    }

    public static /* synthetic */ void zzam(zzfy zzfyVar, long j10) {
        zzfyVar.zzf |= 16;
        zzfyVar.zzn = j10;
    }

    public static /* synthetic */ void zzan(zzfy zzfyVar) {
        zzfyVar.zzf &= -17;
        zzfyVar.zzn = 0L;
    }

    public static /* synthetic */ void zzao(zzfy zzfyVar, long j10) {
        zzfyVar.zzf |= 32;
        zzfyVar.zzo = j10;
    }

    public static /* synthetic */ void zzap(zzfy zzfyVar) {
        zzfyVar.zzf &= -33;
        zzfyVar.zzo = 0L;
    }

    public static /* synthetic */ void zzaq(zzfy zzfyVar, String str) {
        zzfyVar.zzf |= 64;
        zzfyVar.zzp = "android";
    }

    public static /* synthetic */ void zzar(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzf |= 128;
        zzfyVar.zzq = str;
    }

    public static /* synthetic */ void zzas(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzf |= 256;
        zzfyVar.zzr = str;
    }

    public static /* synthetic */ void zzat(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzf |= 512;
        zzfyVar.zzs = str;
    }

    public static /* synthetic */ void zzau(zzfy zzfyVar, int i10) {
        zzfyVar.zzf |= RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE;
        zzfyVar.zzt = i10;
    }

    public static /* synthetic */ void zzav(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzf |= RecyclerView.e0.FLAG_MOVED;
        zzfyVar.zzu = str;
    }

    public static /* synthetic */ void zzaw(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzf |= RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT;
        zzfyVar.zzv = str;
    }

    public static /* synthetic */ void zzax(zzfy zzfyVar, String str) {
        str.getClass();
        zzfyVar.zzf |= RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
        zzfyVar.zzw = str;
    }

    public static /* synthetic */ void zzay(zzfy zzfyVar, long j10) {
        zzfyVar.zzf |= Http2.INITIAL_MAX_FRAME_SIZE;
        zzfyVar.zzx = j10;
    }

    public static /* synthetic */ void zzaz(zzfy zzfyVar, long j10) {
        zzfyVar.zzf |= NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN;
        zzfyVar.zzy = 43042L;
    }

    private final void zzbI() {
        zzkg<zzfo> zzkgVar = this.zzi;
        if (zzkgVar.zzc()) {
            return;
        }
        this.zzi = zzjz.zzbB(zzkgVar);
    }

    private final void zzbJ() {
        zzkg<zzgh> zzkgVar = this.zzj;
        if (zzkgVar.zzc()) {
            return;
        }
        this.zzj = zzjz.zzbB(zzkgVar);
    }

    public static zzfx zzu() {
        return zze.zzbu();
    }

    public final String zzA() {
        return this.zzu;
    }

    public final String zzB() {
        return this.zzw;
    }

    public final String zzC() {
        return this.zzY;
    }

    public final String zzD() {
        return this.zzr;
    }

    public final String zzE() {
        return this.zzP;
    }

    public final String zzF() {
        return this.zzI;
    }

    public final String zzG() {
        return this.zzX;
    }

    public final String zzH() {
        return this.zzF;
    }

    public final String zzI() {
        return this.zzE;
    }

    public final String zzJ() {
        return this.zzq;
    }

    public final String zzK() {
        return this.zzp;
    }

    public final String zzL() {
        return this.zzz;
    }

    public final String zzM() {
        return this.zzs;
    }

    public final List<zzfk> zzN() {
        return this.zzH;
    }

    public final List<zzfo> zzO() {
        return this.zzi;
    }

    public final List<zzgh> zzP() {
        return this.zzj;
    }

    public final int zza() {
        return this.zzJ;
    }

    public final boolean zzaT() {
        return this.zzA;
    }

    public final boolean zzaU() {
        return this.zzG;
    }

    public final boolean zzaV() {
        return (this.zzf & NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH) != 0;
    }

    public final boolean zzaW() {
        return (this.zzf & 33554432) != 0;
    }

    public final boolean zzaX() {
        return (this.zzf & 1048576) != 0;
    }

    public final boolean zzaY() {
        return (this.zzf & NTLMEngineImpl.FLAG_NEGOTIATE_128) != 0;
    }

    public final boolean zzaZ() {
        return (this.zzg & 128) != 0;
    }

    public final int zzb() {
        return this.zzD;
    }

    public final boolean zzba() {
        return (this.zzf & NTLMEngineImpl.FLAG_NEGOTIATE_NTLM2) != 0;
    }

    public final boolean zzbb() {
        return (this.zzg & 16) != 0;
    }

    public final boolean zzbc() {
        return (this.zzf & 8) != 0;
    }

    public final boolean zzbd() {
        return (this.zzf & Http2.INITIAL_MAX_FRAME_SIZE) != 0;
    }

    public final boolean zzbe() {
        return (this.zzf & 131072) != 0;
    }

    public final boolean zzbf() {
        return (this.zzf & 32) != 0;
    }

    public final boolean zzbg() {
        return (this.zzf & 16) != 0;
    }

    public final boolean zzbh() {
        return (this.zzf & 1) != 0;
    }

    public final boolean zzbi() {
        return (this.zzg & 2) != 0;
    }

    public final boolean zzbj() {
        return (this.zzf & 8388608) != 0;
    }

    public final boolean zzbk() {
        return (this.zzf & 4) != 0;
    }

    public final boolean zzbl() {
        return (this.zzf & RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE) != 0;
    }

    public final boolean zzbm() {
        return (this.zzf & 2) != 0;
    }

    public final boolean zzbn() {
        return (this.zzf & NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN) != 0;
    }

    public final int zzc() {
        return this.zzi.size();
    }

    public final int zzd() {
        return this.zzh;
    }

    public final int zze() {
        return this.zzR;
    }

    public final int zzf() {
        return this.zzt;
    }

    public final int zzg() {
        return this.zzj.size();
    }

    public final long zzh() {
        return this.zzO;
    }

    public final long zzi() {
        return this.zzN;
    }

    public final long zzj() {
        return this.zzC;
    }

    public final long zzk() {
        return this.zzV;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzjz.zzbF(zze, "\u00011\u0000\u0002\u0001;1\u0000\u0004\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(7ဇ)9ဈ*:ဇ+;ဉ,", new Object[]{"zzf", "zzg", "zzh", "zzi", zzfo.class, "zzj", zzgh.class, "zzk", "zzl", "zzm", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzn", "zzG", "zzH", zzfk.class, "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", "zzZ", zzfg.zza, "zzaa", "zzab", "zzac", "zzad"});
        }
        if (i11 == 3) {
            return new zzfy();
        }
        zzff zzffVar = null;
        if (i11 == 4) {
            return new zzfx(zzffVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zze;
    }

    public final long zzm() {
        return this.zzm;
    }

    public final long zzn() {
        return this.zzx;
    }

    public final long zzo() {
        return this.zzo;
    }

    public final long zzp() {
        return this.zzn;
    }

    public final long zzq() {
        return this.zzl;
    }

    public final long zzr() {
        return this.zzk;
    }

    public final long zzs() {
        return this.zzy;
    }

    public final zzfo zzt(int i10) {
        return this.zzi.get(i10);
    }

    public final zzgh zzw(int i10) {
        return this.zzj.get(i10);
    }

    public final String zzx() {
        return this.zzS;
    }

    public final String zzy() {
        return this.zzv;
    }

    public final String zzz() {
        return this.zzB;
    }
}
