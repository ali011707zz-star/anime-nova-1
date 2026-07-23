.class abstract Lcom/google/android/gms/internal/measurement/zzns;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@23.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zznr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/zznu;->$r8$clinit:I

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzns;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/measurement/zznr;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzns;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    return-object v0
.end method
