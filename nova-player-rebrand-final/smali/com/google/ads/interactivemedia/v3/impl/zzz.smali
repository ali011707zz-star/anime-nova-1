.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzz;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzaa;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzaa;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzz;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzaa;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzz;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzz;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzaa;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzz;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zze(Ljava/lang/String;)V

    return-void
.end method
