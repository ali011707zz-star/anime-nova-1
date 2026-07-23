.class public abstract Lcom/google/android/gms/internal/ads/zzhvd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhye;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhye;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhkn;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhkk;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhji;

.field private static final zzg:Lcom/google/android/gms/internal/ads/zzhjf;

.field private static final zzh:Lcom/google/android/gms/internal/ads/zzhji;

.field private static final zzi:Lcom/google/android/gms/internal/ads/zzhjf;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.EcdsaPrivateKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhln;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvd;->zzb:Lcom/google/android/gms/internal/ads/zzhye;

    const-string v1, "type.googleapis.com/google.crypto.tink.EcdsaPublicKey"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhln;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhvd;->zzc:Lcom/google/android/gms/internal/ads/zzhye;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhvc;->zza:Lcom/google/android/gms/internal/ads/zzhvc;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhsg;

    const-class v4, Lcom/google/android/gms/internal/ads/zzhlc;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhkn;->zzd(Lcom/google/android/gms/internal/ads/zzhkm;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkn;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhvd;->zzd:Lcom/google/android/gms/internal/ads/zzhkn;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhux;->zza:Lcom/google/android/gms/internal/ads/zzhux;

    invoke-static {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Lcom/google/android/gms/internal/ads/zzhkj;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhvd;->zze:Lcom/google/android/gms/internal/ads/zzhkk;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhuy;->zza:Lcom/google/android/gms/internal/ads/zzhuy;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhsk;

    const-class v4, Lcom/google/android/gms/internal/ads/zzhlb;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhji;->zzd(Lcom/google/android/gms/internal/ads/zzhjh;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhji;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhvd;->zzf:Lcom/google/android/gms/internal/ads/zzhji;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhuz;->zza:Lcom/google/android/gms/internal/ads/zzhuz;

    invoke-static {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzhjf;->zzd(Lcom/google/android/gms/internal/ads/zzhje;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhjf;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhvd;->zzg:Lcom/google/android/gms/internal/ads/zzhjf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhva;->zza:Lcom/google/android/gms/internal/ads/zzhva;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhsi;

    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzhji;->zzd(Lcom/google/android/gms/internal/ads/zzhjh;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhji;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhvd;->zzh:Lcom/google/android/gms/internal/ads/zzhji;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvb;->zza:Lcom/google/android/gms/internal/ads/zzhvb;

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzhjf;->zzd(Lcom/google/android/gms/internal/ads/zzhje;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvd;->zzi:Lcom/google/android/gms/internal/ads/zzhjf;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhkg;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvd;->zzd:Lcom/google/android/gms/internal/ads/zzhkn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzd(Lcom/google/android/gms/internal/ads/zzhkn;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvd;->zze:Lcom/google/android/gms/internal/ads/zzhkk;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zze(Lcom/google/android/gms/internal/ads/zzhkk;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvd;->zzf:Lcom/google/android/gms/internal/ads/zzhji;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzb(Lcom/google/android/gms/internal/ads/zzhji;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvd;->zzg:Lcom/google/android/gms/internal/ads/zzhjf;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzc(Lcom/google/android/gms/internal/ads/zzhjf;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvd;->zzh:Lcom/google/android/gms/internal/ads/zzhji;

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzb(Lcom/google/android/gms/internal/ads/zzhji;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvd;->zzi:Lcom/google/android/gms/internal/ads/zzhjf;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzc(Lcom/google/android/gms/internal/ads/zzhjf;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzhsg;)Lcom/google/android/gms/internal/ads/zzhlc;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqf;->zze()Lcom/google/android/gms/internal/ads/zzhqe;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.EcdsaPrivateKey"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpe;->zzc()Lcom/google/android/gms/internal/ads/zzhpd;

    move-result-object v1

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhvd;->zzl(Lcom/google/android/gms/internal/ads/zzhsg;)Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhpd;->zza(Lcom/google/android/gms/internal/ads/zzhpg;)Lcom/google/android/gms/internal/ads/zzhpd;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhpe;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzf()Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhvd;->zzh(Lcom/google/android/gms/internal/ads/zzhsf;)Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhqe;->zzc(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhqf;

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zza(Lcom/google/android/gms/internal/ads/zzhqf;)Lcom/google/android/gms/internal/ads/zzhlc;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhlc;)Lcom/google/android/gms/internal/ads/zzhsg;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.EcdsaPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhqf;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhpe;->zzb(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhpe;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsg;->zzb()Lcom/google/android/gms/internal/ads/zzhsb;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpe;->zza()Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhpg;->zza()Lcom/google/android/gms/internal/ads/zzhpt;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhvd;->zzi(Lcom/google/android/gms/internal/ads/zzhpt;)Lcom/google/android/gms/internal/ads/zzhsd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhsb;->zzc(Lcom/google/android/gms/internal/ads/zzhsd;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpe;->zza()Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhpg;->zzh()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhvd;->zzo(I)Lcom/google/android/gms/internal/ads/zzhse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhsb;->zza(Lcom/google/android/gms/internal/ads/zzhse;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpe;->zza()Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpg;->zzg()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhvd;->zzn(I)Lcom/google/android/gms/internal/ads/zzhsc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhsb;->zzb(Lcom/google/android/gms/internal/ads/zzhsc;)Lcom/google/android/gms/internal/ads/zzhsb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhvd;->zzj(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzhsb;->zzd(Lcom/google/android/gms/internal/ads/zzhsf;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhsb;->zze()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing EcdsaParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Wrong type URL in call to EcdsaProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzhsk;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlb;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhvd;->zzm(Lcom/google/android/gms/internal/ads/zzhsk;)Lcom/google/android/gms/internal/ads/zzhpk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzd:Lcom/google/android/gms/internal/ads/zzhqb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsk;->zzf()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhsg;->zzf()Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhvd;->zzh(Lcom/google/android/gms/internal/ads/zzhsf;)Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsk;->zzb()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.EcdsaPublicKey"

    .line 3
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhsk;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.EcdsaPublicKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhpk;->zze(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhpk;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhpk;->zza()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsg;->zzb()Lcom/google/android/gms/internal/ads/zzhsb;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhpk;->zzb()Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpg;->zza()Lcom/google/android/gms/internal/ads/zzhpt;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhvd;->zzi(Lcom/google/android/gms/internal/ads/zzhpt;)Lcom/google/android/gms/internal/ads/zzhsd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhsb;->zzc(Lcom/google/android/gms/internal/ads/zzhsd;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhpk;->zzb()Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpg;->zzh()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhvd;->zzo(I)Lcom/google/android/gms/internal/ads/zzhse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhsb;->zza(Lcom/google/android/gms/internal/ads/zzhse;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhpk;->zzb()Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpg;->zzg()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhvd;->zzn(I)Lcom/google/android/gms/internal/ads/zzhsc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhsb;->zzb(Lcom/google/android/gms/internal/ads/zzhsc;)Lcom/google/android/gms/internal/ads/zzhsb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhvd;->zzj(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhsb;->zzd(Lcom/google/android/gms/internal/ads/zzhsf;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsb;->zze()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsk;->zzc()Lcom/google/android/gms/internal/ads/zzhsj;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhsj;->zza(Lcom/google/android/gms/internal/ads/zzhsg;)Lcom/google/android/gms/internal/ads/zzhsj;

    new-instance v0, Ljava/security/spec/ECPoint;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhpk;->zzc()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    .line 13
    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhpk;->zzd()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object p1

    new-instance v2, Ljava/math/BigInteger;

    .line 15
    invoke-direct {v2, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 14
    invoke-direct {v0, v3, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhsj;->zzb(Ljava/security/spec/ECPoint;)Lcom/google/android/gms/internal/ads/zzhsj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 17
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzhsj;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhsj;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhsj;->zzd()Lcom/google/android/gms/internal/ads/zzhsk;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing EcdsaPublicKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Wrong type URL in call to EcdsaProtoSerialization.parsePublicKey: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzhsi;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlb;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsi;->zzd()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzd()Lcom/google/android/gms/internal/ads/zzhsc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhvd;->zzk(Lcom/google/android/gms/internal/ads/zzhsc;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpi;->zze()Lcom/google/android/gms/internal/ads/zzhph;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsi;->zze()Lcom/google/android/gms/internal/ads/zzhsk;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhvd;->zzm(Lcom/google/android/gms/internal/ads/zzhsk;)Lcom/google/android/gms/internal/ads/zzhpk;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhph;->zza(Lcom/google/android/gms/internal/ads/zzhpk;)Lcom/google/android/gms/internal/ads/zzhph;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsi;->zzf()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object p1

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhig;->zzb(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    .line 7
    array-length v0, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzhph;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhph;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhpi;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzc:Lcom/google/android/gms/internal/ads/zzhqb;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsi;->zzd()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhsg;->zzf()Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhvd;->zzh(Lcom/google/android/gms/internal/ads/zzhsf;)Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsi;->zze()Lcom/google/android/gms/internal/ads/zzhsk;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhaz;->zzb()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.EcdsaPrivateKey"

    .line 13
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhsi;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.EcdsaPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhpi;->zzd(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhpi;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpi;->zza()I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Only version 0 keys are accepted"

    if-nez v1, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpi;->zzb()Lcom/google/android/gms/internal/ads/zzhpk;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpk;->zza()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsg;->zzb()Lcom/google/android/gms/internal/ads/zzhsb;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpk;->zzb()Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhpg;->zza()Lcom/google/android/gms/internal/ads/zzhpt;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhvd;->zzi(Lcom/google/android/gms/internal/ads/zzhpt;)Lcom/google/android/gms/internal/ads/zzhsd;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhsb;->zzc(Lcom/google/android/gms/internal/ads/zzhsd;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpk;->zzb()Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhpg;->zzh()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhvd;->zzo(I)Lcom/google/android/gms/internal/ads/zzhse;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhsb;->zza(Lcom/google/android/gms/internal/ads/zzhse;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpk;->zzb()Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhpg;->zzg()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhvd;->zzn(I)Lcom/google/android/gms/internal/ads/zzhsc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhsb;->zzb(Lcom/google/android/gms/internal/ads/zzhsc;)Lcom/google/android/gms/internal/ads/zzhsb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v3

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhvd;->zzj(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhsb;->zzd(Lcom/google/android/gms/internal/ads/zzhsf;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhsb;->zze()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsk;->zzc()Lcom/google/android/gms/internal/ads/zzhsj;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzhsj;->zza(Lcom/google/android/gms/internal/ads/zzhsg;)Lcom/google/android/gms/internal/ads/zzhsj;

    new-instance v2, Ljava/security/spec/ECPoint;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpk;->zzc()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object v4

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    .line 16
    invoke-direct {v5, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpk;->zzd()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object v1

    new-instance v4, Ljava/math/BigInteger;

    .line 18
    invoke-direct {v4, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 19
    invoke-direct {v2, v5, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 20
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzhsj;->zzb(Ljava/security/spec/ECPoint;)Lcom/google/android/gms/internal/ads/zzhsj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 21
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzhsj;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhsj;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhsj;->zzd()Lcom/google/android/gms/internal/ads/zzhsk;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsi;->zzc()Lcom/google/android/gms/internal/ads/zzhsh;

    move-result-object v1

    .line 23
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzhsh;->zza(Lcom/google/android/gms/internal/ads/zzhsk;)Lcom/google/android/gms/internal/ads/zzhsh;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpi;->zzc()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    .line 25
    invoke-direct {v0, v6, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhyf;->zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzhsh;->zzb(Lcom/google/android/gms/internal/ads/zzhyf;)Lcom/google/android/gms/internal/ads/zzhsh;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhsh;->zzc()Lcom/google/android/gms/internal/ads/zzhsi;

    move-result-object p0

    return-object p0

    .line 28
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing EcdsaPrivateKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Wrong type URL in call to EcdsaProtoSerialization.parsePrivateKey: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzhsf;)Lcom/google/android/gms/internal/ads/zzhqy;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsf;->zza:Lcom/google/android/gms/internal/ads/zzhsf;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhqy;->zzb:Lcom/google/android/gms/internal/ads/zzhqy;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsf;->zzb:Lcom/google/android/gms/internal/ads/zzhsf;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhqy;->zze:Lcom/google/android/gms/internal/ads/zzhqy;

    return-object p0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsf;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhqy;->zzd:Lcom/google/android/gms/internal/ads/zzhqy;

    return-object p0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsf;->zzc:Lcom/google/android/gms/internal/ads/zzhsf;

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhqy;->zzc:Lcom/google/android/gms/internal/ads/zzhqy;

    return-object p0

    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzhpt;)Lcom/google/android/gms/internal/ads/zzhsd;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsd;->zzc:Lcom/google/android/gms/internal/ads/zzhsd;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhpt;->zza()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to parse HashType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsd;->zza:Lcom/google/android/gms/internal/ads/zzhsd;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsd;->zzb:Lcom/google/android/gms/internal/ads/zzhsd;

    return-object p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhsf;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsf;->zzb:Lcom/google/android/gms/internal/ads/zzhsf;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqy;->zza()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x22

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to parse OutputPrefixType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsf;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsf;->zzc:Lcom/google/android/gms/internal/ads/zzhsf;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsf;->zza:Lcom/google/android/gms/internal/ads/zzhsf;

    return-object p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzhsc;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsc;->zza:Lcom/google/android/gms/internal/ads/zzhsc;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x21

    return p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsc;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x31

    return p0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsc;->zzc:Lcom/google/android/gms/internal/ads/zzhsc;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x43

    return p0

    .line 4
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize CurveType "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzhsg;)Lcom/google/android/gms/internal/ads/zzhpg;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpg;->zzb()Lcom/google/android/gms/internal/ads/zzhpf;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsg;->zze()Lcom/google/android/gms/internal/ads/zzhsd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsd;->zza:Lcom/google/android/gms/internal/ads/zzhsd;

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhpt;->zzd:Lcom/google/android/gms/internal/ads/zzhpt;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsd;->zzb:Lcom/google/android/gms/internal/ads/zzhsd;

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhpt;->zzc:Lcom/google/android/gms/internal/ads/zzhpt;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsd;->zzc:Lcom/google/android/gms/internal/ads/zzhsd;

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhpt;->zze:Lcom/google/android/gms/internal/ads/zzhpt;

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhpf;->zza(Lcom/google/android/gms/internal/ads/zzhpt;)Lcom/google/android/gms/internal/ads/zzhpf;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzd()Lcom/google/android/gms/internal/ads/zzhsc;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsc;->zza:Lcom/google/android/gms/internal/ads/zzhsc;

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    move v1, v3

    goto :goto_1

    .line 12
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsc;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsc;->zzc:Lcom/google/android/gms/internal/ads/zzhsc;

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x6

    .line 6
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhpf;->zzb(I)Lcom/google/android/gms/internal/ads/zzhpf;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzc()Lcom/google/android/gms/internal/ads/zzhse;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhse;->zza:Lcom/google/android/gms/internal/ads/zzhse;

    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x3

    goto :goto_2

    .line 13
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhse;->zzb:Lcom/google/android/gms/internal/ads/zzhse;

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    :goto_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhpf;->zzc(I)Lcom/google/android/gms/internal/ads/zzhpf;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhpg;

    return-object p0

    .line 14
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize SignatureEncoding "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to serialize CurveType "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to serialize HashType "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzhsk;)Lcom/google/android/gms/internal/ads/zzhpk;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsk;->zzf()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzd()Lcom/google/android/gms/internal/ads/zzhsc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhvd;->zzk(Lcom/google/android/gms/internal/ads/zzhsc;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsk;->zzd()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpk;->zzg()Lcom/google/android/gms/internal/ads/zzhpj;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsk;->zzf()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhvd;->zzl(Lcom/google/android/gms/internal/ads/zzhsg;)Lcom/google/android/gms/internal/ads/zzhpg;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzhpj;->zza(Lcom/google/android/gms/internal/ads/zzhpg;)Lcom/google/android/gms/internal/ads/zzhpj;

    .line 5
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p0

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhig;->zzb(Ljava/math/BigInteger;I)[B

    move-result-object p0

    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    .line 8
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p0

    .line 9
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzhpj;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhpj;

    .line 10
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    .line 11
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhig;->zzb(Ljava/math/BigInteger;I)[B

    move-result-object p0

    .line 12
    array-length v0, p0

    invoke-static {p0, v4, v0}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p0

    .line 13
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzhpj;->zzc(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhpj;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhpk;

    return-object p0
.end method

.method private static zzn(I)Lcom/google/android/gms/internal/ads/zzhsc;
    .locals 3

    add-int/lit8 v0, p0, -0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsc;->zzc:Lcom/google/android/gms/internal/ads/zzhsc;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhps;->zza(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x23

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to parse EllipticCurveType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsc;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsc;->zza:Lcom/google/android/gms/internal/ads/zzhsc;

    return-object p0
.end method

.method private static zzo(I)Lcom/google/android/gms/internal/ads/zzhse;
    .locals 3

    add-int/lit8 v0, p0, -0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhse;->zzb:Lcom/google/android/gms/internal/ads/zzhse;

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhpl;->zza(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x28

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to parse EcdsaSignatureEncoding: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhse;->zza:Lcom/google/android/gms/internal/ads/zzhse;

    return-object p0
.end method
