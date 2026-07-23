.class final synthetic Lcom/google/android/gms/internal/ads/zzeis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/internal/util/client/zzu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/client/zzu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Lcom/google/android/gms/ads/internal/util/client/zzu;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Lcom/google/android/gms/ads/internal/util/client/zzu;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzf(Lcom/google/android/gms/ads/internal/util/client/zzu;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
