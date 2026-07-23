.class public abstract Lcom/google/android/gms/internal/ads/zzhfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhye;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhkn;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhkk;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhji;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhjf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhln;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfa;->zzb:Lcom/google/android/gms/internal/ads/zzhye;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhez;->zza:Lcom/google/android/gms/internal/ads/zzhez;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhev;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhlc;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhkn;->zzd(Lcom/google/android/gms/internal/ads/zzhkm;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkn;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhfa;->zzc:Lcom/google/android/gms/internal/ads/zzhkn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhew;->zza:Lcom/google/android/gms/internal/ads/zzhew;

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Lcom/google/android/gms/internal/ads/zzhkj;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhfa;->zzd:Lcom/google/android/gms/internal/ads/zzhkk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhex;->zza:Lcom/google/android/gms/internal/ads/zzhex;

    const-class v2, Lcom/google/android/gms/internal/ads/zzher;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhlb;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhji;->zzd(Lcom/google/android/gms/internal/ads/zzhjh;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhji;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhfa;->zze:Lcom/google/android/gms/internal/ads/zzhji;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhey;->zza:Lcom/google/android/gms/internal/ads/zzhey;

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzhjf;->zzd(Lcom/google/android/gms/internal/ads/zzhje;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfa;->zzf:Lcom/google/android/gms/internal/ads/zzhjf;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhkg;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfa;->zzc:Lcom/google/android/gms/internal/ads/zzhkn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzd(Lcom/google/android/gms/internal/ads/zzhkn;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfa;->zzd:Lcom/google/android/gms/internal/ads/zzhkk;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zze(Lcom/google/android/gms/internal/ads/zzhkk;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfa;->zze:Lcom/google/android/gms/internal/ads/zzhji;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzb(Lcom/google/android/gms/internal/ads/zzhji;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfa;->zzf:Lcom/google/android/gms/internal/ads/zzhjf;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzc(Lcom/google/android/gms/internal/ads/zzhjf;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzhev;)Lcom/google/android/gms/internal/ads/zzhlc;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqf;->zze()Lcom/google/android/gms/internal/ads/zzhqe;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzg(Lcom/google/android/gms/internal/ads/zzhev;)Lcom/google/android/gms/internal/ads/zzhqx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhev;->zzc()Lcom/google/android/gms/internal/ads/zzheu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzf(Lcom/google/android/gms/internal/ads/zzheu;)Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object p0

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

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhlc;)Lcom/google/android/gms/internal/ads/zzhev;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqx;->zzc(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhqx;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzh(Lcom/google/android/gms/internal/ads/zzhqx;Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhev;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

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

    const-string v1, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzher;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlb;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqv;->zzd()Lcom/google/android/gms/internal/ads/zzhqu;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzher;->zze()Lcom/google/android/gms/internal/ads/zzhev;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzg(Lcom/google/android/gms/internal/ads/zzhev;)Lcom/google/android/gms/internal/ads/zzhqx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhqu;->zza(Lcom/google/android/gms/internal/ads/zzhqx;)Lcom/google/android/gms/internal/ads/zzhqu;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhqv;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zze:Lcom/google/android/gms/internal/ads/zzhqb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzher;->zze()Lcom/google/android/gms/internal/ads/zzhev;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhev;->zzc()Lcom/google/android/gms/internal/ads/zzheu;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhfa;->zzf(Lcom/google/android/gms/internal/ads/zzheu;)Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzher;->zzb()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 6
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzher;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "KmsEnvelopeAeadKeys are only accepted with version 0, got "

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v1

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzhqv;->zzc(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhqv;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhqv;->zza()I

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhqv;->zzb()Lcom/google/android/gms/internal/ads/zzhqx;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzh(Lcom/google/android/gms/internal/ads/zzhqx;Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhev;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 8
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzher;->zzd(Lcom/google/android/gms/internal/ads/zzhev;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzher;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing KmsEnvelopeAeadKey failed: "

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzheu;)Lcom/google/android/gms/internal/ads/zzhqy;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzheu;->zza:Lcom/google/android/gms/internal/ads/zzheu;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhqy;->zzb:Lcom/google/android/gms/internal/ads/zzhqy;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzheu;->zzb:Lcom/google/android/gms/internal/ads/zzheu;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhqy;->zzd:Lcom/google/android/gms/internal/ads/zzhqy;

    return-object p0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzhev;)Lcom/google/android/gms/internal/ads/zzhqx;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhev;->zzd()Lcom/google/android/gms/internal/ads/zzhch;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhbv;->zza(Lcom/google/android/gms/internal/ads/zzhbp;)[B

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqf;->zzd([BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqx;->zzd()Lcom/google/android/gms/internal/ads/zzhqw;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhev;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzhqw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhqw;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhqw;->zzb(Lcom/google/android/gms/internal/ads/zzhqf;)Lcom/google/android/gms/internal/ads/zzhqw;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhqx;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzhqx;Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhev;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqf;->zze()Lcom/google/android/gms/internal/ads/zzhqe;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqx;->zzb()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqx;->zzb()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhqf;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhqe;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhqy;->zzd:Lcom/google/android/gms/internal/ads/zzhqy;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zzc(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhqf;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhbv;->zzb([B)Lcom/google/android/gms/internal/ads/zzhbp;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhdm;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhet;->zza:Lcom/google/android/gms/internal/ads/zzhet;

    goto :goto_0

    .line 13
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzheb;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhet;->zzc:Lcom/google/android/gms/internal/ads/zzhet;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhfx;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhet;->zzb:Lcom/google/android/gms/internal/ads/zzhet;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhcv;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhet;->zzd:Lcom/google/android/gms/internal/ads/zzhet;

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhdd;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhet;->zze:Lcom/google/android/gms/internal/ads/zzhet;

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhdv;

    if-eqz v1, :cond_7

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhet;->zzf:Lcom/google/android/gms/internal/ads/zzhet;

    .line 7
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhes;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhes;-><init>([B)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzheu;->zzb:Lcom/google/android/gms/internal/ads/zzheu;

    goto :goto_1

    .line 14
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhqy;->zza()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x22

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to parse OutputPrefixType: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzheu;->zza:Lcom/google/android/gms/internal/ads/zzheu;

    .line 9
    :goto_1
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhes;->zza(Lcom/google/android/gms/internal/ads/zzheu;)Lcom/google/android/gms/internal/ads/zzhes;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqx;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzhes;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhes;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhch;

    .line 11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzhes;->zzd(Lcom/google/android/gms/internal/ads/zzhch;)Lcom/google/android/gms/internal/ads/zzhes;

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhes;->zzc(Lcom/google/android/gms/internal/ads/zzhet;)Lcom/google/android/gms/internal/ads/zzhes;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhes;->zze()Lcom/google/android/gms/internal/ads/zzhev;

    move-result-object p0

    return-object p0

    .line 16
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported DEK parameters when parsing "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
