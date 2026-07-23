.class public abstract Lcom/google/android/gms/internal/ads/zzhcf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcf;->zzb()Lcom/google/android/gms/internal/ads/zzhix;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhcf;->zzb:Lcom/google/android/gms/internal/ads/zzhix;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhaw;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhie;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcf;->zzb:Lcom/google/android/gms/internal/ads/zzhix;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use non-FIPS-compliant AeadConfigurationV1 in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzb()Lcom/google/android/gms/internal/ads/zzhix;
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzhas;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhky;->zza()Lcom/google/android/gms/internal/ads/zzhkv;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhcl;->zzd(Lcom/google/android/gms/internal/ads/zzhkv;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhcd;->zza:Lcom/google/android/gms/internal/ads/zzhcd;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhcn;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhkv;->zza(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhkv;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhcb;->zza:Lcom/google/android/gms/internal/ads/zzhcb;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhdf;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhkv;->zza(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhkv;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhcc;->zza:Lcom/google/android/gms/internal/ads/zzhcc;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhdo;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhkv;->zza(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhkv;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhca;->zza:Lcom/google/android/gms/internal/ads/zzhca;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhcx;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhkv;->zza(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhkv;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhbz;->zza:Lcom/google/android/gms/internal/ads/zzhbz;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhdw;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhkv;->zza(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhkv;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhby;->zza:Lcom/google/android/gms/internal/ads/zzhby;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhfr;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhkv;->zza(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhkv;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhce;->zza:Lcom/google/android/gms/internal/ads/zzhce;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhfl;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhkv;->zza(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhkv;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhkv;->zzc()Lcom/google/android/gms/internal/ads/zzhky;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhix;->zzb(Lcom/google/android/gms/internal/ads/zzhky;)Lcom/google/android/gms/internal/ads/zzhix;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
