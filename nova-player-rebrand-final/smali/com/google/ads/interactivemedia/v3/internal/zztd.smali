.class Lcom/google/ads/interactivemedia/v3/internal/zztd;
.super Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzf;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzta;

.field private static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzua;


# instance fields
.field volatile remainingField:I

.field volatile seenExceptionsField:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzua;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zztd;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzua;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zztd;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzua;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zztb;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zztb;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zztc;

    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zztc;-><init>([B)V

    move-object v6, v0

    move-object v0, v2

    .line 2
    :goto_0
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zztd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzta;

    if-eqz v6, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zztd;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzua;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzua;->zza()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "<clinit>"

    const-string v5, "SafeAtomicHelper is broken!"

    const-string v3, "com.google.common.util.concurrent.AggregateFutureState"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzf;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztd;->seenExceptionsField:Ljava/util/Set;

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztd;->remainingField:I

    return-void
.end method


# virtual methods
.method final zzy()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zztd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzta;

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzta;->zza(Lcom/google/ads/interactivemedia/v3/internal/zztd;)I

    move-result v0

    return v0
.end method
