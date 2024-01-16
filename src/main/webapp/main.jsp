<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        table {
            border-collapse: collapse;
            margin: auto;
            margin-top: 100px;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
            padding: 10px; /* 더 좋은 간격을 위해 패딩을 늘립니다. */
            text-align: center;
        }

        .shifT1 {
            position: fixed;
            bottom: 10px;
            right: 10px;
            padding: 10px; /* 버튼에 패딩을 추가합니다. */
            font-size: 16px;
        }

        .message {
            position: fixed;
            top: 50%;
            transform: translateY(-50%);
            padding: 20px;
            border: 2px solid #cbd3a4; /* 파란색 테두리 */
            border-radius: 10px; /* 테두리의 모퉁이를 둥글게 */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
            width: 19%;
            height: 300px;
            background-color: #ecf0f1; /* 연한 회색 배경 */
            left: 0.3%;
            text-align: center;
            font-size: 18px; /* 글자 크기 */
            color: #2c3e50; /* 글자 색상 */
            line-height: 1.6; /* 줄 간격 */
        }

        h1 {
            position: fixed;
            top: 10px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 24px; /* 필요에 따라 헤더의 글꼴 크기를 조절합니다. */
            color: #2c3e50;
        }

        .message h2 {
         margin-bottom: 10px; /* 제목 아래에 약간의 여백을 추가합니다. */
        }

        .message p {
        margin-bottom: 8px; /* 각 단락 아래에 약간의 여백을 추가합니다. */
        }
    </style>
      </head>
      <body>
      
      <table>
   
        <tr>
          <th></th>
          <th><a href="week?date=2023-11-20">11/20(月)</a></th>
          <th><a href="week?date=2023-11-21">11/21(火)</a></th>
          <th><a href="week?date=2023-11-22">11/22(水)</a></th>
          <th><a href="week?date=2023-11-23">11/23(木)</a></th>
          <th><a href="week?date=2023-11-24">11/24(金)</a></th>
          <th><a href="week?date=2023-11-25">11/25(土)</a></th>
          <th><a href="week?date=2023-11-26">11/26(日)</a></th>
        </tr>

        <tr>
            <td>ヒナタ</td>
            <td>09~23</td>
            <td>休</td>
            <td>休</td>
            <td>休</td>
            <td>休</td>
            <td>09~23</td>
            <td>09~23</td>
          </tr>

          <tr>
            <td>レイ</td>
            <td>09~17</td>
            <td>09~17</td>
            <td>09~17</td>
            <td>09~17</td>
            <td>09~17</td>
            <td>休</td>
            <td>休</td>
          </tr>

          <tr>
            <td>モエナ</td>
            <td>14~21</td>
            <td>14~21</td>
            <td>休</td>
            <td>休</td>
            <td>休</td>
            <td>17~23</td>
            <td>17~23</td>
          </tr>

          <tr>
            <td>サリナ</td>
            <td>休</td>
            <td>休</td>
            <td>休</td>
            <td>休</td>
            <td>休</td>
            <td>09~17</td>
            <td>09~17</td>
          </tr>

          <tr>
            <td>コウセイ</td>
            <td>17~23</td>
            <td>17~23</td>
            <td>17~23</td>
            <td>17~23</td>
            <td>17~23</td>
            <td>休</td>
            <td>休</td>
          </tr>

          <tr>
            <td>ミサ</td>
            <td>休</td>
            <td>17~23</td>
            <td>17~23</td>
            <td>休</td>
            <td>休</td>
            <td>17~23</td>
            <td>17~23</td>
          </tr>

          <tr>
            <td>アヤノ</td>
            <td>9~23</td>
            <td>09~17</td>
            <td>休</td>
            <td>休</td>
            <td>休</td>
            <td>9~23</td>
            <td>9~23</td>
          </tr>

          <tr>
            <td>キムラ</td>
            <td>休</td>
            <td>09~17</td>
            <td>09~17</td>
            <td>09~17</td>
            <td>09~17</td>
            <td>15~23</td>
            <td>15~23</td>
          </tr>

          <tr>
            <td>モエ</td>
            <td>休</td>
            <td>09~17</td>
            <td>09~17</td>
            <td>09~18</td>
            <td>09~18</td>
            <td>09~18</td>
            <td>09~18</td>
          </tr>

          <tr>
            <td>リア</td>
            <td>15~23</td>
            <td>15~23</td>
            <td>15~23</td>
            <td>15~23</td>
            <td>15~23</td>
            <td>15~23</td>
            <td>休</td>
          </tr>

        
      
      </table>
      <form action="Submit1.html">
      <button class="shifT1">シフト提出</button>
      </form>

     <h1>十円パン難波支店</h1>
    <div class="message">
        <h2>メッセージ</h2>
        <P>ゆか掃除ちゃんとすること</P>
        <P>チーズ大きく切らないごと</P>
        <P>飲み会11/30木</P>
      </body>
      </html>