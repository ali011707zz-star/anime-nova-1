.class final Lcom/google/android/gms/internal/ads/zzei;
.super Landroid/telephony/TelephonyCallback;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzep;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzep;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzei;->zza:Lcom/google/android/gms/internal/ads/zzep;

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/TelephonyDisplayInfo;)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzei;->zza:Lcom/google/android/gms/internal/ads/zzep;

    if-eq v2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0xa

    .line 2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzep;->zze(I)V

    return-void
.end method
