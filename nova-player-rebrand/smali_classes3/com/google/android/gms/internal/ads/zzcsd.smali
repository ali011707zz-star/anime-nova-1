.class final synthetic Lcom/google/android/gms/internal/ads/zzcsd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcsh;

.field private final synthetic zzb:I

.field private final synthetic zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcsh;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsd;->zza:Lcom/google/android/gms/internal/ads/zzcsh;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcsd;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcsd;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsd;->zza:Lcom/google/android/gms/internal/ads/zzcsh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcsd;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcsd;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcsh;->zzm(II)V

    return-void
.end method
