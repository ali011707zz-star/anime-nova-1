.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzcd;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzuj;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzuj;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zza(Ljava/lang/Object;)Z

    return-void
.end method
