.class public final enum Lcom/tonyodev/fetch2/Error;
.super Ljava/lang/Enum;
.source "Error.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/Error$Companion;
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2/Error;

.field public static final enum COMPLETED_NOT_ADDED_SUCCESSFULLY:Lcom/tonyodev/fetch2/Error;

.field public static final enum CONNECTION_TIMED_OUT:Lcom/tonyodev/fetch2/Error;

.field public static final Companion:Lcom/tonyodev/fetch2/Error$Companion;

.field public static final enum DOWNLOAD_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

.field public static final enum EMPTY_RESPONSE_FROM_SERVER:Lcom/tonyodev/fetch2/Error;

.field public static final enum ENQUEUED_REQUESTS_ARE_NOT_DISTINCT:Lcom/tonyodev/fetch2/Error;

.field public static final enum ENQUEUE_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

.field public static final enum FAILED_TO_ADD_COMPLETED_DOWNLOAD:Lcom/tonyodev/fetch2/Error;

.field public static final enum FAILED_TO_RENAME_FILE:Lcom/tonyodev/fetch2/Error;

.field public static final enum FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE:Lcom/tonyodev/fetch2/Error;

.field public static final enum FAILED_TO_UPDATE_REQUEST:Lcom/tonyodev/fetch2/Error;

.field public static final enum FETCH_DATABASE_ERROR:Lcom/tonyodev/fetch2/Error;

.field public static final enum FETCH_FILE_SERVER_INVALID_RESPONSE:Lcom/tonyodev/fetch2/Error;

.field public static final enum FETCH_FILE_SERVER_URL_INVALID:Lcom/tonyodev/fetch2/Error;

.field public static final enum FILE_ALLOCATION_FAILED:Lcom/tonyodev/fetch2/Error;

.field public static final enum FILE_NOT_CREATED:Lcom/tonyodev/fetch2/Error;

.field public static final enum FILE_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

.field public static final enum HTTP_CONNECTION_NOT_ALLOWED:Lcom/tonyodev/fetch2/Error;

.field public static final enum HTTP_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

.field public static final enum INVALID_CONTENT_HASH:Lcom/tonyodev/fetch2/Error;

.field public static final enum NONE:Lcom/tonyodev/fetch2/Error;

.field public static final enum NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

.field public static final enum NO_STORAGE_SPACE:Lcom/tonyodev/fetch2/Error;

.field public static final enum REQUEST_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

.field public static final enum REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

.field public static final enum REQUEST_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

.field public static final enum REQUEST_WITH_FILE_PATH_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

.field public static final enum REQUEST_WITH_ID_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

.field public static final enum UNKNOWN:Lcom/tonyodev/fetch2/Error;

.field public static final enum UNKNOWN_HOST:Lcom/tonyodev/fetch2/Error;

.field public static final enum UNKNOWN_IO_ERROR:Lcom/tonyodev/fetch2/Error;

.field public static final enum WRITE_PERMISSION_DENIED:Lcom/tonyodev/fetch2/Error;


# instance fields
.field private httpResponse:Lcom/tonyodev/fetch2core/Downloader$Response;

.field private throwable:Ljava/lang/Throwable;

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2/Error;
    .locals 3

    .line 0
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/tonyodev/fetch2/Error;

    sget-object v1, Lcom/tonyodev/fetch2/Error;->UNKNOWN:Lcom/tonyodev/fetch2/Error;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->FILE_NOT_CREATED:Lcom/tonyodev/fetch2/Error;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->CONNECTION_TIMED_OUT:Lcom/tonyodev/fetch2/Error;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->UNKNOWN_HOST:Lcom/tonyodev/fetch2/Error;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->HTTP_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->WRITE_PERMISSION_DENIED:Lcom/tonyodev/fetch2/Error;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->NO_STORAGE_SPACE:Lcom/tonyodev/fetch2/Error;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->EMPTY_RESPONSE_FROM_SERVER:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->REQUEST_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->DOWNLOAD_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->FETCH_DATABASE_ERROR:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_ID_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_FILE_PATH_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->REQUEST_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->UNKNOWN_IO_ERROR:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->FILE_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_URL_INVALID:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->INVALID_CONTENT_HASH:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->FAILED_TO_UPDATE_REQUEST:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->FAILED_TO_ADD_COMPLETED_DOWNLOAD:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_INVALID_RESPONSE:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->ENQUEUE_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->COMPLETED_NOT_ADDED_SUCCESSFULLY:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->ENQUEUED_REQUESTS_ARE_NOT_DISTINCT:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_FILE:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->FILE_ALLOCATION_FAILED:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Error;->HTTP_CONNECTION_NOT_ALLOWED:Lcom/tonyodev/fetch2/Error;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->UNKNOWN:Lcom/tonyodev/fetch2/Error;

    .line 30
    new-instance v1, Lcom/tonyodev/fetch2/Error;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v2, "NONE"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    .line 34
    new-instance v2, Lcom/tonyodev/fetch2/Error;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v3, "FILE_NOT_CREATED"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/tonyodev/fetch2/Error;->FILE_NOT_CREATED:Lcom/tonyodev/fetch2/Error;

    .line 37
    new-instance v3, Lcom/tonyodev/fetch2/Error;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v4, "CONNECTION_TIMED_OUT"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/tonyodev/fetch2/Error;->CONNECTION_TIMED_OUT:Lcom/tonyodev/fetch2/Error;

    .line 41
    new-instance v4, Lcom/tonyodev/fetch2/Error;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v5, "UNKNOWN_HOST"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lcom/tonyodev/fetch2/Error;->UNKNOWN_HOST:Lcom/tonyodev/fetch2/Error;

    .line 45
    new-instance v5, Lcom/tonyodev/fetch2/Error;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-string v6, "HTTP_NOT_FOUND"

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lcom/tonyodev/fetch2/Error;->HTTP_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    .line 48
    new-instance v6, Lcom/tonyodev/fetch2/Error;

    const/4 v12, 0x6

    const/4 v13, 0x0

    const-string v7, "WRITE_PERMISSION_DENIED"

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/tonyodev/fetch2/Error;->WRITE_PERMISSION_DENIED:Lcom/tonyodev/fetch2/Error;

    .line 51
    new-instance v7, Lcom/tonyodev/fetch2/Error;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const-string v8, "NO_STORAGE_SPACE"

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/tonyodev/fetch2/Error;->NO_STORAGE_SPACE:Lcom/tonyodev/fetch2/Error;

    .line 54
    new-instance v8, Lcom/tonyodev/fetch2/Error;

    const/4 v14, 0x6

    const/4 v15, 0x0

    const-string v9, "NO_NETWORK_CONNECTION"

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v8, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    .line 57
    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v1, "EMPTY_RESPONSE_FROM_SERVER"

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->EMPTY_RESPONSE_FROM_SERVER:Lcom/tonyodev/fetch2/Error;

    .line 61
    new-instance v1, Lcom/tonyodev/fetch2/Error;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v2, "REQUEST_ALREADY_EXIST"

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/tonyodev/fetch2/Error;->REQUEST_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    .line 64
    new-instance v2, Lcom/tonyodev/fetch2/Error;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v3, "DOWNLOAD_NOT_FOUND"

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/tonyodev/fetch2/Error;->DOWNLOAD_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    .line 67
    new-instance v3, Lcom/tonyodev/fetch2/Error;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v4, "FETCH_DATABASE_ERROR"

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/tonyodev/fetch2/Error;->FETCH_DATABASE_ERROR:Lcom/tonyodev/fetch2/Error;

    .line 73
    new-instance v4, Lcom/tonyodev/fetch2/Error;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v5, "REQUEST_WITH_ID_ALREADY_EXIST"

    const/16 v6, 0xd

    const/16 v7, 0xd

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_ID_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    .line 79
    new-instance v5, Lcom/tonyodev/fetch2/Error;

    const/4 v11, 0x6

    const-string v6, "REQUEST_WITH_FILE_PATH_ALREADY_EXIST"

    const/16 v7, 0xe

    const/16 v8, 0xe

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_FILE_PATH_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    .line 82
    new-instance v6, Lcom/tonyodev/fetch2/Error;

    const/4 v12, 0x6

    const-string v7, "REQUEST_NOT_SUCCESSFUL"

    const/16 v8, 0xf

    const/16 v9, 0xf

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/tonyodev/fetch2/Error;->REQUEST_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    .line 85
    new-instance v7, Lcom/tonyodev/fetch2/Error;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const-string v8, "UNKNOWN_IO_ERROR"

    const/16 v9, 0x10

    const/16 v10, 0x10

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/tonyodev/fetch2/Error;->UNKNOWN_IO_ERROR:Lcom/tonyodev/fetch2/Error;

    .line 89
    new-instance v8, Lcom/tonyodev/fetch2/Error;

    const/4 v14, 0x6

    const-string v9, "FILE_NOT_FOUND"

    const/16 v10, 0x11

    const/16 v11, 0x11

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v8, Lcom/tonyodev/fetch2/Error;->FILE_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    .line 94
    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v1, "FETCH_FILE_SERVER_URL_INVALID"

    const/16 v2, 0x12

    const/16 v3, 0x13

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_URL_INVALID:Lcom/tonyodev/fetch2/Error;

    .line 98
    new-instance v1, Lcom/tonyodev/fetch2/Error;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v2, "INVALID_CONTENT_HASH"

    const/16 v4, 0x14

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/tonyodev/fetch2/Error;->INVALID_CONTENT_HASH:Lcom/tonyodev/fetch2/Error;

    .line 101
    new-instance v2, Lcom/tonyodev/fetch2/Error;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v3, "FAILED_TO_UPDATE_REQUEST"

    const/16 v5, 0x15

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/tonyodev/fetch2/Error;->FAILED_TO_UPDATE_REQUEST:Lcom/tonyodev/fetch2/Error;

    .line 104
    new-instance v3, Lcom/tonyodev/fetch2/Error;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v4, "FAILED_TO_ADD_COMPLETED_DOWNLOAD"

    const/16 v6, 0x16

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/tonyodev/fetch2/Error;->FAILED_TO_ADD_COMPLETED_DOWNLOAD:Lcom/tonyodev/fetch2/Error;

    .line 107
    new-instance v4, Lcom/tonyodev/fetch2/Error;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v5, "FETCH_FILE_SERVER_INVALID_RESPONSE"

    const/16 v7, 0x17

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_INVALID_RESPONSE:Lcom/tonyodev/fetch2/Error;

    .line 110
    new-instance v5, Lcom/tonyodev/fetch2/Error;

    const/4 v11, 0x6

    const-string v6, "REQUEST_DOES_NOT_EXIST"

    const/16 v8, 0x18

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    .line 113
    new-instance v6, Lcom/tonyodev/fetch2/Error;

    const/4 v12, 0x6

    const-string v7, "ENQUEUE_NOT_SUCCESSFUL"

    const/16 v9, 0x19

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/tonyodev/fetch2/Error;->ENQUEUE_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    .line 116
    new-instance v7, Lcom/tonyodev/fetch2/Error;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const-string v8, "COMPLETED_NOT_ADDED_SUCCESSFULLY"

    const/16 v10, 0x1a

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/tonyodev/fetch2/Error;->COMPLETED_NOT_ADDED_SUCCESSFULLY:Lcom/tonyodev/fetch2/Error;

    .line 119
    new-instance v8, Lcom/tonyodev/fetch2/Error;

    const/4 v14, 0x6

    const-string v9, "ENQUEUED_REQUESTS_ARE_NOT_DISTINCT"

    const/16 v11, 0x1b

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v8, Lcom/tonyodev/fetch2/Error;->ENQUEUED_REQUESTS_ARE_NOT_DISTINCT:Lcom/tonyodev/fetch2/Error;

    .line 123
    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v1, "FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE"

    const/16 v2, 0x1b

    const/16 v3, 0x1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE:Lcom/tonyodev/fetch2/Error;

    .line 128
    new-instance v1, Lcom/tonyodev/fetch2/Error;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v2, "FAILED_TO_RENAME_FILE"

    const/16 v4, 0x1d

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_FILE:Lcom/tonyodev/fetch2/Error;

    .line 133
    new-instance v2, Lcom/tonyodev/fetch2/Error;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v3, "FILE_ALLOCATION_FAILED"

    const/16 v5, 0x1e

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/tonyodev/fetch2/Error;->FILE_ALLOCATION_FAILED:Lcom/tonyodev/fetch2/Error;

    .line 138
    new-instance v3, Lcom/tonyodev/fetch2/Error;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v4, "HTTP_CONNECTION_NOT_ALLOWED"

    const/16 v6, 0x1f

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/tonyodev/fetch2/Error;->HTTP_CONNECTION_NOT_ALLOWED:Lcom/tonyodev/fetch2/Error;

    invoke-static {}, Lcom/tonyodev/fetch2/Error;->$values()[Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/Error;->$VALUES:[Lcom/tonyodev/fetch2/Error;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/Error;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/tonyodev/fetch2/Error$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/Error$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->Companion:Lcom/tonyodev/fetch2/Error$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/tonyodev/fetch2/Error;->value:I

    .line 18
    iput-object p4, p0, Lcom/tonyodev/fetch2/Error;->throwable:Ljava/lang/Throwable;

    .line 23
    iput-object p5, p0, Lcom/tonyodev/fetch2/Error;->httpResponse:Lcom/tonyodev/fetch2core/Downloader$Response;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_1

    move-object p6, v0

    :goto_0
    move-object p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_1
    move-object p6, p5

    goto :goto_0

    .line 8
    :goto_1
    invoke-direct/range {p1 .. p6}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;
    .locals 1

    const-class v0, Lcom/tonyodev/fetch2/Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 181
    check-cast p0, Lcom/tonyodev/fetch2/Error;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2/Error;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2/Error;->$VALUES:[Lcom/tonyodev/fetch2/Error;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 181
    check-cast v0, [Lcom/tonyodev/fetch2/Error;

    return-object v0
.end method


# virtual methods
.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tonyodev/fetch2/Error;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/tonyodev/fetch2/Error;->value:I

    return v0
.end method

.method public final setHttpResponse(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tonyodev/fetch2/Error;->httpResponse:Lcom/tonyodev/fetch2core/Downloader$Response;

    return-void
.end method

.method public final setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tonyodev/fetch2/Error;->throwable:Ljava/lang/Throwable;

    return-void
.end method
