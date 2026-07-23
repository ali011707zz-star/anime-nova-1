.class public abstract Lcom/google/android/gms/internal/ads/zzhlt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhjb;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhba;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhls;->zza:Lcom/google/android/gms/internal/ads/zzhls;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhlt;->zza:Lcom/google/android/gms/internal/ads/zzhjb;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlq;->zza:Lcom/google/android/gms/internal/ads/zzhlq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhlx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhlp;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhlt;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlr;->zza:Lcom/google/android/gms/internal/ads/zzhlr;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhlt;->zzc:Lcom/google/android/gms/internal/ads/zzhku;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzb:Lcom/google/android/gms/internal/ads/zzhqb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhnw;->zzg()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v3, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhjl;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhlt;->zzd:Lcom/google/android/gms/internal/ads/zzhba;

    return-void
.end method

.method public static zza(Z)V
    .locals 4

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhnc;->$r8$clinit:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhnc;->zza(Lcom/google/android/gms/internal/ads/zzhkg;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjx;->zza()Lcom/google/android/gms/internal/ads/zzhjx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlt;->zza:Lcom/google/android/gms/internal/ads/zzhjb;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhlw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjx;->zzb(Lcom/google/android/gms/internal/ads/zzhjb;Ljava/lang/Class;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlt;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlt;->zzc:Lcom/google/android/gms/internal/ads/zzhku;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhmx;->zzc:Lcom/google/android/gms/internal/ads/zzhlw;

    const-string v3, "AES_CMAC"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AES256_CMAC"

    .line 12
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhlu;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhlu;-><init>([B)V

    const/16 v3, 0x20

    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhlu;->zza(I)Lcom/google/android/gms/internal/ads/zzhlu;

    const/16 v3, 0x10

    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhlu;->zzb(I)Lcom/google/android/gms/internal/ads/zzhlu;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhlv;->zzd:Lcom/google/android/gms/internal/ads/zzhlv;

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhlu;->zzc(Lcom/google/android/gms/internal/ads/zzhlv;)Lcom/google/android/gms/internal/ads/zzhlu;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhlu;->zzd()Lcom/google/android/gms/internal/ads/zzhlw;

    move-result-object v2

    const-string v3, "AES256_CMAC_RAW"

    .line 17
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzd(Ljava/util/Map;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlt;->zzd:Lcom/google/android/gms/internal/ads/zzhba;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhjc;->zzb(Lcom/google/android/gms/internal/ads/zzhba;Z)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES CMAC is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzhlw;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlp;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhlt;->zze(Lcom/google/android/gms/internal/ads/zzhlw;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlo;-><init>([B)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhlo;->zza(Lcom/google/android/gms/internal/ads/zzhlw;)Lcom/google/android/gms/internal/ads/zzhlo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlw;->zzc()I

    move-result p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhyg;->zzb(I)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhlo;->zzb(Lcom/google/android/gms/internal/ads/zzhyg;)Lcom/google/android/gms/internal/ads/zzhlo;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhlo;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlo;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlo;->zzd()Lcom/google/android/gms/internal/ads/zzhlp;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhlp;)Lcom/google/android/gms/internal/ads/zzhlx;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlp;->zzf()Lcom/google/android/gms/internal/ads/zzhlw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlt;->zze(Lcom/google/android/gms/internal/ads/zzhlw;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhnf;->zza(Lcom/google/android/gms/internal/ads/zzhlp;)Lcom/google/android/gms/internal/ads/zzhlx;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzhlp;)Lcom/google/android/gms/internal/ads/zzhbo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlp;->zzf()Lcom/google/android/gms/internal/ads/zzhlw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlt;->zze(Lcom/google/android/gms/internal/ads/zzhlw;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhxu;->zza(Lcom/google/android/gms/internal/ads/zzhlp;)Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object p0

    return-object p0
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzhlw;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlw;->zzc()I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
