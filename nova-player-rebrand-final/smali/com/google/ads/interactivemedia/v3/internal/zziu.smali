.class final Lcom/google/ads/interactivemedia/v3/internal/zziu;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zziu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zza(Landroid/content/Context;)V

    return-void
.end method
