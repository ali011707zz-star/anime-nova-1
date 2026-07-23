.class final synthetic Lcom/google/android/gms/internal/ads/zzec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzed;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzec;->zza:Lcom/google/android/gms/internal/ads/zzed;

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzec;->zza:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzed;->zzh(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method
