.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzcf;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzuj;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzuj;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcf;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcf;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcf;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcf;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcf;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcf;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzj(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzuj;)V

    return-void
.end method
