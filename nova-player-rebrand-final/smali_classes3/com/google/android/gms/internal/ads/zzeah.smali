.class final synthetic Lcom/google/android/gms/internal/ads/zzeah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeak;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbqk;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfki;

.field private final synthetic zze:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeak;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqk;Lcom/google/android/gms/internal/ads/zzfki;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeah;->zza:Lcom/google/android/gms/internal/ads/zzeak;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzc:Lcom/google/android/gms/internal/ads/zzbqk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzd:Lcom/google/android/gms/internal/ads/zzfki;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeah;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeah;->zza:Lcom/google/android/gms/internal/ads/zzeak;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzc:Lcom/google/android/gms/internal/ads/zzbqk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzd:Lcom/google/android/gms/internal/ads/zzfki;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeah;->zze:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeak;->zzk(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqk;Lcom/google/android/gms/internal/ads/zzfki;Ljava/util/List;)V

    return-void
.end method
