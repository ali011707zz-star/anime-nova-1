.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzgk;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzgl;

.field private final synthetic zzb:Landroid/content/Context;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzgl;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzgk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzgl;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzgk;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzgk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzgl;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzgk;->zzb:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzgl;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
