.class final synthetic Lcom/google/android/gms/internal/ads/zzeip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeiu;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field private final synthetic zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/ads/internal/util/client/zzu;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeip;->zza:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeip;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeip;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeip;->zza:Lcom/google/android/gms/internal/ads/zzeiu;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeip;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeip;->zzc:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzeiu;->zzb(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/ads/internal/util/client/zzu;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
