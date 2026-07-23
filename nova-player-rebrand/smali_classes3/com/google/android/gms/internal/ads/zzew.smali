.class final synthetic Lcom/google/android/gms/internal/ads/zzew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfa;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzew;->zza:Lcom/google/android/gms/internal/ads/zzfa;

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zza:Lcom/google/android/gms/internal/ads/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->zzb(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
