.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzah;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final synthetic zzc:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private final synthetic zzd:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

.field private final synthetic zze:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;

.field private final synthetic zzf:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zzc:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zzd:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zze:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zzc:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zzd:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zze:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zzf:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;Ljava/lang/String;)V

    return-void
.end method
