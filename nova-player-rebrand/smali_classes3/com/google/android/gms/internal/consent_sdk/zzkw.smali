.class public final Lcom/google/android/gms/internal/consent_sdk/zzkw;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzkw;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/consent_sdk/zzqq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzkw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzkw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzkw;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzkw;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzs()Lcom/google/android/gms/internal/consent_sdk/zzqq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzkw;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzqq;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/consent_sdk/zzkw;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzkw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzkw;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzkw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzkw;

    return-object p1

    .line 5
    :cond_0
    throw p3

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzku;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzku;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzkz;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzkw;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzkw;-><init>()V

    return-object p1

    .line 1
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    sget-object p3, Lcom/google/android/gms/internal/consent_sdk/zzkv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqp;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzkw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzkw;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u082c"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
