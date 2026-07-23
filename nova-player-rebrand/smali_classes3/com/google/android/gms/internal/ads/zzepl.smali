.class final Lcom/google/android/gms/internal/ads/zzepl;
.super Lcom/google/android/gms/internal/ads/zzcue;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzepp;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcwd;Lcom/google/android/gms/internal/ads/zzfis;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcwd;Lcom/google/android/gms/internal/ads/zzfis;)V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdcr;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdcr;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdcr;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
