.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzca;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

.field private final synthetic zzb:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzca;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzca;->zzb:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzca;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzca;->zzb:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzk(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void
.end method
