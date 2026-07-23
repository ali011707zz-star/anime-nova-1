.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzfz;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzub;

.field private final synthetic zzc:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private final synthetic zzd:Lcom/google/ads/interactivemedia/v3/internal/zzet;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzub;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfz;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfz;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfz;->zzc:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfz;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzj;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzj;->zze(I)Lcom/google/ads/interactivemedia/v3/internal/zzj;

    const-string v1, "a.3.38.0"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzj;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzj;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzj;->zzb(Z)Lcom/google/ads/interactivemedia/v3/internal/zzj;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzj;->zzc(Z)Lcom/google/ads/interactivemedia/v3/internal/zzj;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfz;->zza:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfz;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    const/16 v4, 0x1e

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfz;->zzc:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 6
    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzdy;->zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzz;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzz;->zza(Z)Lcom/google/ads/interactivemedia/v3/internal/zzz;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzj;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzaa;)Lcom/google/ads/interactivemedia/v3/internal/zzj;

    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzku;

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzk;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzku;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzk;)V

    .line 10
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfz;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 11
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->SPAM_MS_PARAMETER_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->SETUP_AD_SHIELD:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzh(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    return-object v0
.end method
