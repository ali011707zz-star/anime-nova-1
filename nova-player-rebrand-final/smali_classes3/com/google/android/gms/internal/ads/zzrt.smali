.class final synthetic Lcom/google/android/gms/internal/ads/zzrt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzru;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzru;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrt;->zza:Lcom/google/android/gms/internal/ads/zzru;

    return-void
.end method


# virtual methods
.method public final synthetic onRoutingChanged(Landroid/media/AudioRouting;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->zza:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzru;->zza(Landroid/media/AudioRouting;)V

    return-void
.end method
