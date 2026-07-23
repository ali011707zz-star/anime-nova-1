.class final synthetic Lcom/google/android/gms/internal/ads/zzbrk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbro;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbro;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrk;->zza:Lcom/google/android/gms/internal/ads/zzbro;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrk;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrk;->zza:Lcom/google/android/gms/internal/ads/zzbro;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrk;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbro;->zzq(Ljava/lang/String;)V

    return-void
.end method
