.class final synthetic Lcom/google/android/gms/internal/ads/zzdzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeaa;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeaa;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzz;->zza:Lcom/google/android/gms/internal/ads/zzeaa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzz;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzz;->zza:Lcom/google/android/gms/internal/ads/zzeaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzeak;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzz;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeak;->zzl(Ljava/lang/String;)V

    return-void
.end method
