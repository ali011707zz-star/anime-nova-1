.class final synthetic Lcom/google/android/gms/internal/ads/zzlv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzlx;

.field private final synthetic zzb:Landroid/util/Pair;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzwg;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlx;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzwg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zza:Lcom/google/android/gms/internal/ads/zzlx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzb:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzb:Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zza:Lcom/google/android/gms/internal/ads/zzlx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlx;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmc;->zzj()Lcom/google/android/gms/internal/ads/zzmx;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    .line 1
    invoke-interface {v2, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzwv;->zzam(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwg;)V

    return-void
.end method
