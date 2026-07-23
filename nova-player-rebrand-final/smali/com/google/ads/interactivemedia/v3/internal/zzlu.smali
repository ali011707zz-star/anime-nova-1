.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzlu;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpt;


# instance fields
.field private final synthetic zza:Landroid/content/Context;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlu;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlu;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
