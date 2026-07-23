.class final synthetic Lcom/google/android/gms/internal/ads/zzcgt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgw;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgw;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgt;->zza:Lcom/google/android/gms/internal/ads/zzcgw;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcgt;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgt;->zza:Lcom/google/android/gms/internal/ads/zzcgw;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcgt;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgw;->zzP(I)V

    return-void
.end method
