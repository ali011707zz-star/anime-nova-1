.class final synthetic Lcom/google/android/gms/internal/ads/zzca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcd;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzca;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    return-void
.end method


# virtual methods
.method public final synthetic onAudioFocusChange(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcd;->zze(I)V

    return-void
.end method
