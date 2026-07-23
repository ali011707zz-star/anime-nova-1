.class final Lcom/google/ads/interactivemedia/v3/internal/zzjb;
.super Landroid/content/BroadcastReceiver;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzjc;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzjc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzjc;->zzd()V

    return-void
.end method
