.class final Lcom/google/android/gms/internal/ads/zzbia;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbid;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbid;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zza:Lcom/google/android/gms/internal/ads/zzbid;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbia;->zza:Lcom/google/android/gms/internal/ads/zzbid;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbid;->zzc(I)V

    return-void
.end method
