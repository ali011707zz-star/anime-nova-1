.class final synthetic Lcom/google/android/gms/internal/ads/zzkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzlf;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlf;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzlf;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzlf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzlf;->zzv(I)V

    return-void
.end method
