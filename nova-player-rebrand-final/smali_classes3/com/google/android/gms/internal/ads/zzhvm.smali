.class public abstract Lcom/google/android/gms/internal/ads/zzhvm;
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

.field private static final zzj:Lcom/google/android/gms/internal/ads/zzhiu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.Ed25519PrivateKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhln;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zzb:Lcom/google/android/gms/internal/ads/zzhye;

    const-string v1, "type.googleapis.com/google.crypto.tink.Ed25519PublicKey"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhln;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhvm;->zzc:Lcom/google/android/gms/internal/ads/zzhye;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhvl;->zza:Lcom/google/android/gms/internal/ads/zzhvl;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhsq;

    const-class v4, Lcom/google/android/gms/internal/ads/zzhlc;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhkn;->zzd(Lcom/google/android/gms/internal/ads/zzhkm;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkn;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhvm;->zzd:Lcom/google/android/gms/internal/ads/zzhkn;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhvg;->zza:Lcom/google/android/gms/internal/ads/zzhvg;

    invoke-static {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Lcom/google/android/gms/internal/ads/zzhkj;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhvm;->zze:Lcom/google/android/gms/internal/ads/zzhkk;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhvh;->zza:Lcom/google/android/gms/internal/ads/zzhvh;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhsx;

    const-class v4, Lcom/google/android/gms/internal/ads/zzhlb;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhji;->zzd(Lcom/google/android/gms/internal/ads/zzhjh;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhji;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhvm;->zzf:Lcom/google/android/gms/internal/ads/zzhji;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhvi;->zza:Lcom/google/android/gms/internal/ads/zzhvi;

    invoke-static {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzhjf;->zzd(Lcom/google/android/gms/internal/ads/zzhje;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhjf;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhvm;->zzg:Lcom/google/android/gms/internal/ads/zzhjf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvj;->zza:Lcom/google/android/gms/internal/ads/zzhvj;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhsr;

    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzhji;->zzd(Lcom/google/android/gms/internal/ads/zzhjh;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhji;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhvm;->zzh:Lcom/google/android/gms/internal/ads/zzhji;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvk;->zza:Lcom/google/android/gms/internal/ads/zzhvk;

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzhjf;->zzd(Lcom/google/android/gms/internal/ads/zzhje;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zzi:Lcom/google/android/gms/internal/ads/zzhjf;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhiu;->zza()Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhqy;->zzd:Lcom/google/android/gms/internal/ads/zzhqy;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsp;->zzd:Lcom/google/android/gms/internal/ads/zzhsp;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhit;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhqy;->zzb:Lcom/google/android/gms/internal/ads/zzhqy;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsp;->zza:Lcom/google/android/gms/internal/ads/zzhsp;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhit;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhqy;->zze:Lcom/google/android/gms/internal/ads/zzhqy;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsp;->zzb:Lcom/google/android/gms/internal/ads/zzhsp;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhit;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhqy;->zzc:Lcom/google/android/gms/internal/ads/zzhqy;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsp;->zzc:Lcom/google/android/gms/internal/ads/zzhsp;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhit;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhit;->zzb()Lcom/google/android/gms/internal/ads/zzhiu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zzj:Lcom/google/android/gms/internal/ads/zzhiu;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhkg;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zzd:Lcom/google/android/gms/internal/ads/zzhkn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzd(Lcom/google/android/gms/internal/ads/zzhkn;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zze:Lcom/google/android/gms/internal/ads/zzhkk;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zze(Lcom/google/android/gms/internal/ads/zzhkk;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zzf:Lcom/google/android/gms/internal/ads/zzhji;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzb(Lcom/google/android/gms/internal/ads/zzhji;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zzg:Lcom/google/android/gms/internal/ads/zzhjf;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzc(Lcom/google/android/gms/internal/ads/zzhjf;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zzh:Lcom/google/android/gms/internal/ads/zzhji;

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzb(Lcom/google/android/gms/internal/ads/zzhji;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zzi:Lcom/google/android/gms/internal/ads/zzhjf;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzc(Lcom/google/android/gms/internal/ads/zzhjf;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzhsq;)Lcom/google/android/gms/internal/ads/zzhlc;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqf;->zze()Lcom/google/android/gms/internal/ads/zzhqe;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.Ed25519PrivateKey"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpn;->zzc()Lcom/google/android/gms/internal/ads/zzhpn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhqe;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvm;->zzj:Lcom/google/android/gms/internal/ads/zzhiu;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzhiu;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhqy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhqe;->zzc(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhqf;

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zza(Lcom/google/android/gms/internal/ads/zzhqf;)Lcom/google/android/gms/internal/ads/zzhlc;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhlc;)Lcom/google/android/gms/internal/ads/zzhsq;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.Ed25519PrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhpn;->zzb(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhpn;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpn;->zza()I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zzj:Lcom/google/android/gms/internal/ads/zzhiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhiu;->zzc(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhsp;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhsq;->zzb(Lcom/google/android/gms/internal/ads/zzhsp;)Lcom/google/android/gms/internal/ads/zzhsq;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing Ed25519Parameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Wrong type URL in call to Ed25519ProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzhsx;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlb;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhvm;->zzh(Lcom/google/android/gms/internal/ads/zzhsx;)Lcom/google/android/gms/internal/ads/zzhpr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzd:Lcom/google/android/gms/internal/ads/zzhqb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvm;->zzj:Lcom/google/android/gms/internal/ads/zzhiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsx;->zzf()Lcom/google/android/gms/internal/ads/zzhsq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object v2

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhiu;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhqy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsx;->zzb()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.Ed25519PublicKey"

    .line 3
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhsx;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.Ed25519PublicKey"

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
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhpr;->zzc(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhpr;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhpr;->zza()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvm;->zzj:Lcom/google/android/gms/internal/ads/zzhiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhiu;->zzc(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhsp;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhpr;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhye;->zza([B)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 9
    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzhsx;->zzc(Lcom/google/android/gms/internal/ads/zzhsp;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhsx;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing Ed25519PublicKey failed"

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

    const-string v0, "Wrong type URL in call to Ed25519ProtoSerialization.parsePublicKey: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzhsr;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlb;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpp;->zze()Lcom/google/android/gms/internal/ads/zzhpo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsr;->zze()Lcom/google/android/gms/internal/ads/zzhsx;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhvm;->zzh(Lcom/google/android/gms/internal/ads/zzhsx;)Lcom/google/android/gms/internal/ads/zzhpr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhpo;->zzb(Lcom/google/android/gms/internal/ads/zzhpr;)Lcom/google/android/gms/internal/ads/zzhpo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsr;->zzf()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhpo;->zza(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhpo;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhpp;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzc:Lcom/google/android/gms/internal/ads/zzhqb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvm;->zzj:Lcom/google/android/gms/internal/ads/zzhiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsr;->zzd()Lcom/google/android/gms/internal/ads/zzhsq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhiu;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhqy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsr;->zze()Lcom/google/android/gms/internal/ads/zzhsx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhaz;->zzb()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.Ed25519PrivateKey"

    .line 9
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhsr;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.Ed25519PrivateKey"

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhpp;->zzd(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhpp;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpp;->zza()I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Only version 0 keys are accepted"

    if-nez v1, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpp;->zzc()Lcom/google/android/gms/internal/ads/zzhpr;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpr;->zza()I

    move-result v3

    if-nez v3, :cond_0

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhvm;->zzj:Lcom/google/android/gms/internal/ads/zzhiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhiu;->zzc(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhsp;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpr;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhye;->zza([B)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 12
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzhsx;->zzc(Lcom/google/android/gms/internal/ads/zzhsp;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhsx;

    move-result-object p0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpp;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhyg;->zza([BLcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhsr;->zzc(Lcom/google/android/gms/internal/ads/zzhsx;Lcom/google/android/gms/internal/ads/zzhyg;)Lcom/google/android/gms/internal/ads/zzhsr;

    move-result-object p0

    return-object p0

    .line 9
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

    .line 16
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing Ed25519PrivateKey failed"

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

    const-string v0, "Wrong type URL in call to Ed25519ProtoSerialization.parsePrivateKey: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzhsx;)Lcom/google/android/gms/internal/ads/zzhpr;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpr;->zzd()Lcom/google/android/gms/internal/ads/zzhpq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsx;->zzd()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhpq;->zza(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhpq;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhpr;

    return-object p0
.end method
